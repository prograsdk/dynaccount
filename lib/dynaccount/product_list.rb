module Dynaccount
  class ProductList < DynaccountObject
    def self.ignore_put
      [:id, :price_sale]
    end

    def self.api_path
      "product_list"
    end
  end
end
