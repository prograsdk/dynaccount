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
      find(0)
    end

    def self.find(id)
      request(:get, id)
      p id, self.url
    end

    def self.url
      "/v5/#{Dynaccount.api_id}/#{Dynaccount.api_key}/#{self.api_path}"
    end
  end
end