module Dynaccount
  class Account < DynaccountObject
    def self.ignore_put
      [:id, :system, :module, :stock, :is_bank]
    end

    def self.api_path
      "account"
    end
  end
end
