module Dynaccount
  class ProductGroup < DynaccountObject
    def self.ignore_put
      [:id, :block_id]
    end

    def self.api_path
      'product_group'
    end
  end
end
