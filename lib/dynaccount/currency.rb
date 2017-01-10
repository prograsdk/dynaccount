module Dynaccount
  class Currency < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      'currency'
    end
  end
end
