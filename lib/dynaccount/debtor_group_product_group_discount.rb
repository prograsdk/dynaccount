module Dynaccount
  class DebtorGroupProductGroupDiscount < DynaccountObject
    def self.ignore_put
      [:id, :product_group_id]
    end

    def self.api_path
      "debtor_group_product_group_discount"
    end
  end
end
