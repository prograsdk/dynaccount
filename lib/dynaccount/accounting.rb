module Dynaccount
  class Accounting < DynaccountObject
    def self.ignore_put
      [:id, :time, :bank_recon_id, :currency_amount, :is_readonly]
    end

    def self.api_path
      'accounting'
    end
  end
end
