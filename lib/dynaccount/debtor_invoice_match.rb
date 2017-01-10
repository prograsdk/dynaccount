module Dynaccount
  class DebtorInvoiceMatch < DynaccountObject
    def self.ignore_put
      [:id, :is_matched, :is_creditnote, :time, :invoice_id_, :currency_rate, :amount, :currency_amount]
    end

    def self.api_path
      "debtor_invoice_match"
    end
  end
end
