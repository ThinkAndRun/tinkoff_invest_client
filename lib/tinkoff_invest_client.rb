=begin
#OpenAPI

#tinkoff.ru/invest OpenAPI.

The version of the OpenAPI document: 1.0.0
Contact: al.a.volkov@tinkoff.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

# Common files
require 'tinkoff_invest_client/api_client'
require 'tinkoff_invest_client/api_error'
require 'tinkoff_invest_client/version'
require 'tinkoff_invest_client/configuration'

# Models
require 'tinkoff_invest_client/models/broker_account_type'
require 'tinkoff_invest_client/models/candle'
require 'tinkoff_invest_client/models/candle_resolution'
require 'tinkoff_invest_client/models/candles'
require 'tinkoff_invest_client/models/candles_response'
require 'tinkoff_invest_client/models/currencies'
require 'tinkoff_invest_client/models/currency'
require 'tinkoff_invest_client/models/currency_position'
require 'tinkoff_invest_client/models/empty'
require 'tinkoff_invest_client/models/error'
require 'tinkoff_invest_client/models/error_payload'
require 'tinkoff_invest_client/models/instrument_type'
require 'tinkoff_invest_client/models/limit_order_request'
require 'tinkoff_invest_client/models/limit_order_response'
require 'tinkoff_invest_client/models/market_instrument'
require 'tinkoff_invest_client/models/market_instrument_list'
require 'tinkoff_invest_client/models/market_instrument_list_response'
require 'tinkoff_invest_client/models/market_instrument_response'
require 'tinkoff_invest_client/models/market_order_request'
require 'tinkoff_invest_client/models/market_order_response'
require 'tinkoff_invest_client/models/money_amount'
require 'tinkoff_invest_client/models/operation'
require 'tinkoff_invest_client/models/operation_status'
require 'tinkoff_invest_client/models/operation_trade'
require 'tinkoff_invest_client/models/operation_type'
require 'tinkoff_invest_client/models/operation_type_with_commission'
require 'tinkoff_invest_client/models/operations'
require 'tinkoff_invest_client/models/operations_response'
require 'tinkoff_invest_client/models/order'
require 'tinkoff_invest_client/models/order_response'
require 'tinkoff_invest_client/models/order_status'
require 'tinkoff_invest_client/models/order_type'
require 'tinkoff_invest_client/models/orderbook'
require 'tinkoff_invest_client/models/orderbook_response'
require 'tinkoff_invest_client/models/orders_response'
require 'tinkoff_invest_client/models/placed_limit_order'
require 'tinkoff_invest_client/models/placed_market_order'
require 'tinkoff_invest_client/models/portfolio'
require 'tinkoff_invest_client/models/portfolio_currencies_response'
require 'tinkoff_invest_client/models/portfolio_position'
require 'tinkoff_invest_client/models/portfolio_response'
require 'tinkoff_invest_client/models/sandbox_account'
require 'tinkoff_invest_client/models/sandbox_currency'
require 'tinkoff_invest_client/models/sandbox_register_request'
require 'tinkoff_invest_client/models/sandbox_register_response'
require 'tinkoff_invest_client/models/sandbox_set_currency_balance_request'
require 'tinkoff_invest_client/models/sandbox_set_position_balance_request'
require 'tinkoff_invest_client/models/search_market_instrument'
require 'tinkoff_invest_client/models/search_market_instrument_response'
require 'tinkoff_invest_client/models/trade_status'
require 'tinkoff_invest_client/models/user_account'
require 'tinkoff_invest_client/models/user_accounts'
require 'tinkoff_invest_client/models/user_accounts_response'

# APIs
require 'tinkoff_invest_client/api/market_api'
require 'tinkoff_invest_client/api/operations_api'
require 'tinkoff_invest_client/api/orders_api'
require 'tinkoff_invest_client/api/portfolio_api'
require 'tinkoff_invest_client/api/sandbox_api'
require 'tinkoff_invest_client/api/user_api'

module TinkoffInvestClient
  class << self
    # Customize default settings for the SDK using block.
    #   TinkoffInvestClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
