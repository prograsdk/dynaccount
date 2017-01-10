module Dynaccount
  class DebtorCreditnote < DynaccountObject
    def self.ignore_put
      [:id, :is_booked, :module_id, :invoice_id_, :credit_invoice_id_, :sha1_ref, :lang, :vat_amount, :total_amount, :total_weight, :profit_amount, :attention, :address, :zip, :city, :txt]
    end

    def self.api_path
      'debtor_creditnote'
    end
  end
end
