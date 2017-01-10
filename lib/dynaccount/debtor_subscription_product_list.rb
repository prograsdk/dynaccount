module Dynaccount
  class DebtorSubscriptionProductList < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :qty, :price, :discount_percent, :vat_amount, :total_amount, :total_weight, :profit_amount, :name, :list_qty]
    end

    def self.api_path
      'debtor_subscription_product_list'
    end
  end
end
