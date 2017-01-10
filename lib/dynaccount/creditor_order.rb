module Dynaccount
  class CreditorOrder < DynaccountObject
    def self.ignore_put
      [:id, :is_approved, :is_invoiced, :module_id, :order_id_, :is_seen, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      'creditor_order'
    end
  end
end
