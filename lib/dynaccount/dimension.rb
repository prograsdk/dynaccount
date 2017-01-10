module Dynaccount
  class Dimension < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      'dimension'
    end
  end
end
