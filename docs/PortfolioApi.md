# TinkoffInvestClient::PortfolioApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**portfolio_currencies_get**](PortfolioApi.md#portfolio_currencies_get) | **GET** /portfolio/currencies | Получение валютных активов клиента |
| [**portfolio_get**](PortfolioApi.md#portfolio_get) | **GET** /portfolio | Получение портфеля клиента |


## portfolio_currencies_get

> <PortfolioCurrenciesResponse> portfolio_currencies_get(opts)

Получение валютных активов клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::PortfolioApi.new
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Получение валютных активов клиента
  result = api_instance.portfolio_currencies_get(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling PortfolioApi->portfolio_currencies_get: #{e}"
end
```

#### Using the portfolio_currencies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioCurrenciesResponse>, Integer, Hash)> portfolio_currencies_get_with_http_info(opts)

```ruby
begin
  # Получение валютных активов клиента
  data, status_code, headers = api_instance.portfolio_currencies_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioCurrenciesResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling PortfolioApi->portfolio_currencies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**PortfolioCurrenciesResponse**](PortfolioCurrenciesResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## portfolio_get

> <PortfolioResponse> portfolio_get(opts)

Получение портфеля клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::PortfolioApi.new
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Получение портфеля клиента
  result = api_instance.portfolio_get(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling PortfolioApi->portfolio_get: #{e}"
end
```

#### Using the portfolio_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioResponse>, Integer, Hash)> portfolio_get_with_http_info(opts)

```ruby
begin
  # Получение портфеля клиента
  data, status_code, headers = api_instance.portfolio_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling PortfolioApi->portfolio_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**PortfolioResponse**](PortfolioResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

