module Dynaccount
  class Payment < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      'payment'
    end
  end
end
