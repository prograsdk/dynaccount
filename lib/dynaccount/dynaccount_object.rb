module Dynaccount
  class DynaccountObject
    def initialize(id)
      @original_values = {}
      @values = {}
      @values[:id] = id if id
    end
  end
end