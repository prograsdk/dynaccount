module Dynaccount
  class Payment < DynaccountObject

    def self.url
      "/v5/payment"
    end
  end
end
