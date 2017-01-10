module Dynaccount
  class Enclosure < DynaccountObject
    def self.ignore_put
      [:id, :is_booked, :system, :dimension_id, :balance_amount, :vat_amount, :profit_amount]
    end

    def self.api_path
      "enclosure"
    end
  end
end
