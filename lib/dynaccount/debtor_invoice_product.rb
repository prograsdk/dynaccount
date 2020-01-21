module Dynaccount
  class DebtorInvoiceProduct < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :qty_credited, :is_list_listing, :is_list_pricing, :vat_amount, :vatcode_type, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      'debtor_invoice_product'
    end
  end
end
