module Dynaccount
  class ProductCurrency < DynaccountObject
    def self.ignore_put
      [:id, :seq]
    end

    def self.api_path
      'product_currency'
    end
  end
end
