module Dynaccount
  class AccountingBank < DynaccountObject
    def self.ignore_put
      [:id, :account_id, :accounting_id, :time, :is_booked, :recon_id, :amount, :currency_amount]
    end

    def self.api_path
      'accounting_bank'
    end
  end
end
