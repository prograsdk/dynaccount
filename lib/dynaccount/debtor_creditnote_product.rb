module Dynaccount
  class DebtorCreditnoteProduct < DynaccountObject
    def self.ignore_put
      [:id, :product_id, :qty_credited, :is_list_listing, :is_list_pricing, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      "debtor_creditnote_product"
    end
  end
end
