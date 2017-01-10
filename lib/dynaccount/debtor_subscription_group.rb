module Dynaccount
  class DebtorSubscriptionGroup < DynaccountObject
    def self.ignore_put
      [:id, :is_active, :time_next_charge, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      'debtor_subscription_group'
    end
  end
end
