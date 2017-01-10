module Dynaccount
  class CreditorInvoiceMatch < DynaccountObject
    def self.ignore_put
      [:id, :is_matched, :time, :invoice_id_, :currency_rate, :amount, :currency_amount]
    end

    def self.api_path
      'creditor_invoice_match'
    end
  end
end
