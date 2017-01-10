module Dynaccount
  class CreditorInvoice < DynaccountObject
    def self.ignore_put
      [:id, :is_booked, :is_system, :is_matched, :time_due, :enc_id_, :currency_rate, :accountoff_id, :vat_amount, :total_amount]
    end

    def self.api_path
      "creditor_invoice"
    end
  end
end
