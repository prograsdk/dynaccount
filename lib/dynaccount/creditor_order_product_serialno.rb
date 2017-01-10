module Dynaccount
  class CreditorOrderProductSerialno < DynaccountObject
    def self.ignore_put
      [:id, :is_booked, :order_id, :order_product_id, :seq]
    end

    def self.api_path
      "creditor_order_product_serialno"
    end
  end
end
