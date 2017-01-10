module Dynaccount
  class DebtorGroup < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "debtor_group"
    end
  end
end
