module Dynaccount
  class ProductListProduct < DynaccountObject
    def self.ignore_put
      [:id, :block_id, :product_id]
    end

    def self.api_path
      'product_list_product'
    end
  end
end
