module Dynaccount
  class Contact < DynaccountObject
    def self.ignore_put
      [:id, :module_id, :time_last_followup, :time_next_followup, :time_created]
    end

    def self.api_path
      'contact'
    end
  end
end
