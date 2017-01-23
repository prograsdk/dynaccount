module Dynaccount
  class DynaccountObject
    def initialize(attributes)
      @keys = attributes.keys
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

    def save
      updt = @keys.select { |k| !self.class.ignore_put.include?(k.to_sym) }
                  .map { |k| [k, send(k)] }
                  .to_h
      Dynaccount.request(self.class.url(id, 'put'), updt, :post).body
    end

    def self.create(attributes = {})
      Dynaccount.request(url(nil, 'put'), attributes, :post).body
    end

    def self.all
      find(nil)
    end

    def self.find(id)
      req = JSON.parse(Dynaccount.request(url(id, 'get'), {}, :post).body)['result'].map { |res| new(res) }
      return req[0] if req.size == 1
      req
    end

    def self.find_by(param = {})
      req = JSON.parse(Dynaccount.request(url(nil, 'get'), params, :post).body)['result'].map { |res| new(res) }
      return req[0] if req.size == 1
      req
    end

    def self.url(id, action)
      "/v5/#{Dynaccount.api_id}/#{Dynaccount.api_key}/#{action}/#{api_path}/json/#{"#{id}/" unless id.nil?}"
    end
  end
end
