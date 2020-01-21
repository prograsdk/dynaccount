module Dynaccount
  class DynaccountObject
    attr_accessor :values

    def initialize(attributes)
      @keys = attributes.keys
      @values = attributes
      attributes.each do |k, v|
        singleton_class.send(:attr_accessor, k.to_sym)
        send("#{k}=", v)
      end
    end

    def update(attributes = {})
      return true if attributes.empty?
      updt = @keys.select { |k| !self.class.ignore_put.include?(k.to_sym) }
                  .map { |k| [k, send(k)] }
                  .to_h
      attributes.merge!(updt)
      Dynaccount.request(self.class.url(id, 'put'), attributes, :post).body
    end

    def destroy
      Dynaccount.request(self.class.url(id, 'delete'), {}, :post).body
    end

    def save
      updt = @keys.select { |k| !self.class.ignore_put.include?(k.to_sym) }
                  .map { |k| [k, send(k)] }
                  .to_h
      Dynaccount.request(self.class.url(id, 'put'), updt, :post).body
    end

    def self.create(attributes = {})
      req = JSON.parse(Dynaccount.request(url(nil, 'put'), attributes, :post).body).fetch('result', []).map { |res| new(res) }
      req[0]
    end

    def self.all
      find(nil) || []
    end

    def self.find(id)
      req = JSON.parse(Dynaccount.request(url(id, 'get'), {}, :post).body).fetch('result', []).map { |res| new(res) }
      return req[0] if req.size == 1
      req
    rescue JSON::ParserError => _e
      return nil
    end

    def self.find_by(params = {})
      req = JSON.parse(Dynaccount.request(url(nil, 'get', params), {}, :post).body).fetch('result', []).map { |res| new(res) }
      return req[0] if req.size == 1
      req
    rescue JSON::ParserError => _e
      return nil
    end

    def self.run_query(select: [], where: {}, limit: nil, offset: nil, order: [])
      params = {}
      params.merge!(select: select.join('%2C')) if select&.any?
      params.merge!(where.tap {|w| w&.delete(:select) }) if where
      params.merge!(order: "#{order[0]}+#{order[1]}") if order&.count == 2
      params.merge!(limit: "#{[offset, limit].select {|i| i.is_a?(Integer) }.join('%2C')}") if [offset, limit].select {|i| i.is_a?(Integer) }.any?

      JSON.parse(
        Dynaccount.request(url(nil, 'get', params), {}, :post).body
      ).fetch('result', []).map { |res| new(res) }
    rescue JSON::ParserError => _e
      return nil
    end

    def self.query
      Dynaccount::QueryBuilder.new(self)
    end

    def self.url(id, action, params = {})
      url = "/v7/#{Dynaccount.api_id}/#{Dynaccount.api_key}/#{action}/#{api_path}/#{"#{id}/" unless id.nil?}"
      url += "?" + params.map do |k,v|
        "#{k}=#{v.to_s.gsub(/[^a-zA-Z0-9_\-.]/n) { sprintf("%%%02X", $&.unpack("C")[0]) }.encode('utf-8')}"
      end.sort.join('&') if params.any?
      url
    end

    def marshal_dump
      values
    end

    def marshal_load(val)
      initialize(val)
    end
  end
end
