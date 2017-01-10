module Dynaccount
  class Vatcode < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "vatcode"
    end
  end
end
