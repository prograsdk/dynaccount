module Dynaccount
  class DebtorSubscription < DynaccountObject
    def self.ignore_put
      [
        :id,
        :is_active,
        :module_id,
        :module_group_id,
        :module_name,
        :module_vatno,
        :module_ean,
        :module_email,
        :module_email_invoice,
        :time_next_charge,
        :vat_amount,
        :total_amount,
        :total_weight,
        :profit_amount
      ]
    end

    def self.api_path
      'debtor_subscription'
    end
  end
end
