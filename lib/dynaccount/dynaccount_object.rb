module Dynaccount
  class DynaccountObject
    def initialize(id)
      @original_values = {}
      @values = {}
      @values[:id] = id if id
    end

    def create
    end

    def self.all
      find(0)
    end

    def self.find(id)
      request(:get, id)
    end
  end
end