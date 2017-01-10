module Dynaccount
  class Location < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "location"
    end
  end
end
