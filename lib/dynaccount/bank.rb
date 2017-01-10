module Dynaccount
  class Bank < DynaccountObject
    def self.ignore_put
      [:id, :account_id]
    end

    def self.api_path
      'bank'
    end
  end
end
