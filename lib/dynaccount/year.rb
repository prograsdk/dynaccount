module Dynaccount
  class Year < DynaccountObject
    def self.ignore_put
      [:id, :is_closed, :time_start, :time_end, :enc_next_id_]
    end

    def self.api_path
      'year'
    end
  end
end
