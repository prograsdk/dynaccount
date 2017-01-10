module Dynaccount
  class CreditorInvoiceProduct < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :vat_amount, :total_amount, :total_weight]
    end

    def self.api_path
      'creditor_invoice_product'
    end
  end
end
