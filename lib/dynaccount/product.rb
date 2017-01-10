module Dynaccount
  class Product < DynaccountObject
    def self.ignore_put
      [:id, :block_id, :type, :product_group_id, :in_stock, :in_order, :in_supplier_order, :time_stock_change, :is_stocked, :profit_ratio, :price_cost]
    end

    def self.api_path
      "product"
    end
  end
end
