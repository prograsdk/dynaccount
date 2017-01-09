module Dynaccount
  class DynaccountObject
    def initialize(id)
      @original_values = {}
      @values = {}
      @values[:id] = id if id
    end

    def create(attributes = {})
    end

    def self.all
      JSON.parse(find(nil)).to_hash
    end

    def self.find(id)
      Dynaccount.request(url(id), {}, :post)
    end

    def self.url(id)
      "/v5/#{Dynaccount.api_id}/#{Dynaccount.api_key}/get/#{api_path}/json/#{"#{id}/" unless id.nil?}"
    end
  end
end