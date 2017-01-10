module Dynaccount
  class StockAdjustment < DynaccountObject
    def self.ignore_put
      [:id, :product_id]
    end

    def self.api_path
      'stock_adjustment'
    end
  end
end
