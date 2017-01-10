module Dynaccount
  class DebtorSubscription < DynaccountObject
    def self.ignore_put
      [:id, :is_active, :module_id, :time_next_charge, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      "debtor_subscription"
    end
  end
end
