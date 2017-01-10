module Dynaccount
  class Creditor < DynaccountObject
    def self.ignore_put
      [:id, :balance, :vatno_validation]
    end

    def self.api_path
      'creditor'
    end
  end
end
