module Dynaccount
  class DebtorReminder < DynaccountObject
    def self.ignore_put
      [:id, :module_id_, :reminder_time, :reminder_time_due, :reminder_level, :balance, :name, :is_fi_payment]
    end

    def self.api_path
      'debtor_reminder'
    end
  end
end
