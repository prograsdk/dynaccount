module Dynaccount
  class Draft < DynaccountObject
    def self.ignore_put
      [:id]
    end

    def self.api_path
      "draft"
    end
  end
end
