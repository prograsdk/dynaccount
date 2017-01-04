module Dynaccount
  class DynaccountObject < ParentClass
    def initialize(id)
      @original_values = {}
      @values = {}
      @values[:id] = id if id
    end
  end
end