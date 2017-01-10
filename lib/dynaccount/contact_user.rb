module Dynaccount
  class ContactUser < DynaccountObject
    def self.ignore_put
      [:id, :contact_id]
    end

    def self.api_path
      'contact_user'
    end
  end
end
