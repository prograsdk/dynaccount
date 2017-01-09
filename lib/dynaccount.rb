require 'JSON'
require 'faraday'
require 'net/http/persistent'
require 'logger'

require 'dynaccount/dynaccount_object'

require 'dynaccount/account'
require 'dynaccount/accounting'
require 'dynaccount/accounting_bank'
require 'dynaccount/bank'
require 'dynaccount/bank_recon'
require 'dynaccount/contact'
require 'dynaccount/contact_user'
require 'dynaccount/creditor'
require 'dynaccount/creditor_accounting_module'
require 'dynaccount/creditor_group'
require 'dynaccount/creditor_invoice'
require 'dynaccount/creditor_invoice_match'
require 'dynaccount/creditor_invoice_product'
require 'dynaccount/creditor_order'
require 'dynaccount/creditor_order_product'
require 'dynaccount/creditor_order_product_serialno'
require 'dynaccount/currency'
require 'dynaccount/data_voucher'
require 'dynaccount/debtor'
require 'dynaccount/debtor_accounting_module'
require 'dynaccount/debtor_creditnote'
require 'dynaccount/debtor_creditnote_product'
require 'dynaccount/debtor_creditnote_product_list'
require 'dynaccount/debtor_group'
require 'dynaccount/debtor_group_product_discount'
require 'dynaccount/debtor_group_product_group_discount'
require 'dynaccount/debtor_invoice'
require 'dynaccount/debtor_invoice_match'
require 'dynaccount/debtor_invoice_product'
require 'dynaccount/debtor_invoice_product_list'
require 'dynaccount/debtor_order'
require 'dynaccount/debtor_order_product'
require 'dynaccount/debtor_order_product_list'
require 'dynaccount/debtor_order_product_serialno'
require 'dynaccount/debtor_product_discount'
require 'dynaccount/debtor_product_group_discount'
require 'dynaccount/debtor_reminder'
require 'dynaccount/debtor_quote'
require 'dynaccount/debtor_quote_product'
require 'dynaccount/debtor_quote_product_list'
require 'dynaccount/debtor_subscription'
require 'dynaccount/debtor_subscription_group'
require 'dynaccount/debtor_subscription_group_product'
require 'dynaccount/debtor_subscription_group_product_list'
require 'dynaccount/debtor_subscription_product'
require 'dynaccount/debtor_subscription_product_list'
require 'dynaccount/dimension'
require 'dynaccount/draft'
require 'dynaccount/enclosure'
require 'dynaccount/followup'
require 'dynaccount/location'
require 'dynaccount/opportunity'
require 'dynaccount/payment'
require 'dynaccount/product'
require 'dynaccount/product_currency'
require 'dynaccount/product_group'
require 'dynaccount/product_list'
require 'dynaccount/product_list_product'
require 'dynaccount/product_supplier'
require 'dynaccount/stock_adjustment'
require 'dynaccount/unit'
require 'dynaccount/vatcode'
require 'dynaccount/year'
require 'dynaccount/year_period'

module Dynaccount
  @base_url = 'api.dynaccount.com'

  class << self
    attr_accessor :api_key, :api_base, :api_secret, :api_id

    def request(url, params = {}, method = :get)
      conn = Faraday.new(url: "https://#{request_url(url)}") do |faraday|
        faraday.request  :url_encoded
        faraday.response :logger, ::Logger.new(STDOUT), bodies: true
        faraday.adapter  :net_http_persistent
      end

      conn.post do |req|
        req.body = { __api_hash: api_hash(request_url(url), params) }
      end
    end

    def request_url(url)
      @base_url + url
    end

    def api_hash(url, params = {})
      p "#{url}#{URI.encode_www_form(params)}#{api_secret}"
      (Digest::SHA1.new << "#{url}#{URI.encode_www_form(params)}#{api_secret}")
        .to_s
    end
  end
end
