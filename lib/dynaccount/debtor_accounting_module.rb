module Dynaccount
  class DebtorAccountingModule < DynaccountObject
    def self.ignore_put
      [:id, :is_matched, :time, :is_booked, :currency_rate, :amount, :currency_amount]
    end

    def self.api_path
      'debtor_accounting_module'
    end
  end
end
