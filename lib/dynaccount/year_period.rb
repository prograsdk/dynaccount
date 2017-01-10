module Dynaccount
  class YearPeriod < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "year_period"
    end
  end
end
