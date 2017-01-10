module Dynaccount
  class CreditorOrderProduct < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :qty_invoiced, :vat_amount, :total_amount, :total_weight]
    end

    def self.api_path
      'creditor_order_product'
    end
  end
end
