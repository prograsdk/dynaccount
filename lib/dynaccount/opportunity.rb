module Dynaccount
  class Opportunity < DynaccountObject
    def self.ignore_put
      [:id, :contact_id, :time_last_followup, :time_next_followup, :time_start, :is_ended_time, :status]
    end

    def self.api_path
      "opportunity"
    end
  end
end
