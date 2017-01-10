module Dynaccount
  class DynaccountObject
    def initialize(attributes)
      @keys = attributes.keys
      attributes.each do |k, v|
        self.singleton_class.send(:attr_accessor, k.to_sym)
        self.send("#{k}=", v)
      end
    end

    def update
      Dynaccount.request(url(self.id, 'put'), attributes, :post).body
    end

    def self.create(attributes = {})
      Dynaccount.request(url(nil, 'put'), attributes, :post).body
    end

    def self.all
      find(nil)
    end

    def self.find(id)
      req = JSON.parse(Dynaccount.request(url(id, 'get'), {}, :post).body)["result"].map { |res| new(res) }
      return req[0] if req.size == 1
      req
    end

    def self.url(id, action)
      "/v5/#{Dynaccount.api_id}/#{Dynaccount.api_key}/#{action}/#{api_path}/json/#{"#{id}/" unless id.nil?}"
    end
  end
end