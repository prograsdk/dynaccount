module Dynaccount
  class DebtorQuote < DynaccountObject
    def self.ignore_put
      [:id, :module_id, :quote_id_, :is_seen, :is_transferred_time, :vat_amount, :total_amount, :total_weight, :profit_amount]
    end

    def self.api_path
      "debtor_quote"
    end
  end
end
