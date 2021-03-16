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

# Unit tests for TinkoffInvestClient::PortfolioApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PortfolioApi' do
  before do
    # run before each test
    @api_instance = TinkoffInvestClient::PortfolioApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortfolioApi' do
    it 'should create an instance of PortfolioApi' do
      expect(@api_instance).to be_instance_of(TinkoffInvestClient::PortfolioApi)
    end
  end

  # unit tests for portfolio_currencies_get
  # Получение валютных активов клиента
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
  # @return [PortfolioCurrenciesResponse]
  describe 'portfolio_currencies_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for portfolio_get
  # Получение портфеля клиента
  # @param [Hash] opts the optional parameters
  # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
  # @return [PortfolioResponse]
  describe 'portfolio_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
