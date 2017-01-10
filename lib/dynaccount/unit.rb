module Dynaccount
  class Unit < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "unit"
    end
  end
end
