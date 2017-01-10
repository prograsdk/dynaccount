module Dynaccount
  class DebtorCreditnoteProductList < DynaccountObject
    def self.ignore_put
      [:id, :invoice_product_id, :product_id, :qty, :price, :discount_percent, :vat_amount, :total_amount, :total_weight, :profit_amount, :name, :list_qty]
    end

    def self.api_path
      'debtor_creditnote_product_list'
    end
  end
end
