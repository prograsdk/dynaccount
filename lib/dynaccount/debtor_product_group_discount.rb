module Dynaccount
  class DebtorProductGroupDiscount < DynaccountObject
    def self.ignore_put
      [:id, :product_group_id]
    end

    def self.api_path
      "debtor_product_group_discount"
    end
  end
end
