module Dynaccount
  class DebtorGroupProductDiscount < DynaccountObject
    def self.ignore_put
      [:id, :product_id]
    end

    def self.api_path
      'debtor_group_product_discount'
    end
  end
end
