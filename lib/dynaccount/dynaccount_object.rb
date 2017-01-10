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
    end

    def self.create(attributes = {})
      # POST tosame path as below,
    end

    def self.all
      find(nil)
    end

    def self.find(id)
      req = JSON.parse(Dynaccount.request(url(id), {}, :post).body)["result"].map { |res| new(res) }
      return req[0] if req.size == 1
      req
    end

    def self.url(id)
      "/v5/#{Dynaccount.api_id}/#{Dynaccount.api_key}/get/#{api_path}/json/#{"#{id}/" unless id.nil?}"
    end
  end
end