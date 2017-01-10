module Dynaccount
  class CreditorGroup < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      'creditor_group'
    end
  end
end
