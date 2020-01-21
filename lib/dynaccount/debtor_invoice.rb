module Dynaccount
  class DebtorInvoice < DynaccountObject
    def self.ignore_put
      [
        :id,
        :is_booked,
        :is_system,
        :is_matched,
        :is_reminder,
        :is_credited,
        :is_credited_complete,
        :is_subscription,
        :module_id,
        :time_due,
        :invoice_id_,
        :currency_rate,
        :sha1_ref,
        :is_seen,
        :fi_payment_id_,
        :accountoff_id,
        :vat_amount,
        :total_amount,
        :total_weight,
        :profit_amount,
        :public_url
      ]
    end

    def self.api_path
      'debtor_invoice'
    end
  end
end
