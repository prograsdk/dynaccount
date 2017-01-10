module Dynaccount
  class BankRecon < DynaccountObject
    def self.ignore_put
      [:id, :account_id, :time, :recon_id, :accounting_id, :is_fi_payment, :seq, :amount, :accum_amount, :txt]
    end

    def self.api_path
      'bank_recon'
    end
  end
end
