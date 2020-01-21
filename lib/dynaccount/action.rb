module Dynaccount
  class Action
    def self.api_path
      'accounting_bank'
    end

    def self.run(action, params = {})
      JSON.parse(Dynaccount.request(url(action), params, :post).body)
    end

    def self.url(action)
      "/v7/#{Dynaccount.api_id}/#{Dynaccount.api_key}/action/#{action}/"
    end
  end
end
