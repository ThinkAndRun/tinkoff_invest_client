=begin
#OpenAPI

#tinkoff.ru/invest OpenAPI.

The version of the OpenAPI document: 1.0.0
Contact: al.a.volkov@tinkoff.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for TinkoffInvestClient::OrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @api_instance = TinkoffInvestClient::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@api_instance).to be_instance_of(TinkoffInvestClient::OrdersApi)
    end
  end

  # unit tests for orders_cancel_post
  # Отмена заявки
  # @param order_id ID заявки
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
  # @return [Empty]
  describe 'orders_cancel_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for orders_get
  # Получение списка активных заявок
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
  # @return [OrdersResponse]
  describe 'orders_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for orders_limit_order_post
  # Создание лимитной заявки
  # @param figi FIGI инструмента
  # @param limit_order_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
  # @return [LimitOrderResponse]
  describe 'orders_limit_order_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for orders_market_order_post
  # Создание рыночной заявки
  # @param figi FIGI инструмента
  # @param market_order_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Уникальный идентификатор счета (по умолчанию - Тинькофф)
  # @return [MarketOrderResponse]
  describe 'orders_market_order_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
