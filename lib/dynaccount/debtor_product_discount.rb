module Dynaccount
  class DebtorProductDiscount < DynaccountObject
    def self.ignore_put
      [:id, :product_id]
    end

    def self.api_path
      'debtor_product_discount'
    end
  end
end
