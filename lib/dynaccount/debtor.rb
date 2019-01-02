module Dynaccount
  class Debtor < DynaccountObject
    def self.ignore_put
      [
        :id,
        :contact_id,
        :balance,
        :vatno_validation,
        :time_vatno_validation,
        :due,
        :is_blocked,
        :invoicing_module_name
      ]
    end

    def self.api_path
      'debtor'
    end
  end
end
