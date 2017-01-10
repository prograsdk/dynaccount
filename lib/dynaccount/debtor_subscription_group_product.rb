module Dynaccount
  class DebtorSubscriptionGroupProduct < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :is_list_listing, :is_list_pricing, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      "debtor_subscription_group_product"
    end
  end
end
