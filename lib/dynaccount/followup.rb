module Dynaccount
  class Followup < DynaccountObject
    def self.ignore_put
      [:id, :contact_id, :is_finished]
    end

    def self.api_path
      'followup'
    end
  end
end
