# TinkoffInvestClient::SandboxApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sandbox_clear_post**](SandboxApi.md#sandbox_clear_post) | **POST** /sandbox/clear | Удаление всех позиций |
| [**sandbox_currencies_balance_post**](SandboxApi.md#sandbox_currencies_balance_post) | **POST** /sandbox/currencies/balance | Выставление баланса по валютным позициям |
| [**sandbox_positions_balance_post**](SandboxApi.md#sandbox_positions_balance_post) | **POST** /sandbox/positions/balance | Выставление баланса по инструментным позициям |
| [**sandbox_register_post**](SandboxApi.md#sandbox_register_post) | **POST** /sandbox/register | Регистрация клиента в sandbox |
| [**sandbox_remove_post**](SandboxApi.md#sandbox_remove_post) | **POST** /sandbox/remove | Удаление счета |


## sandbox_clear_post

> <Empty> sandbox_clear_post(opts)

Удаление всех позиций

Удаление всех позиций клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::SandboxApi.new
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Удаление всех позиций
  result = api_instance.sandbox_clear_post(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_clear_post: #{e}"
end
```

#### Using the sandbox_clear_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Empty>, Integer, Hash)> sandbox_clear_post_with_http_info(opts)

```ruby
begin
  # Удаление всех позиций
  data, status_code, headers = api_instance.sandbox_clear_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Empty>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_clear_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sandbox_currencies_balance_post

> <Empty> sandbox_currencies_balance_post(sandbox_set_currency_balance_request, opts)

Выставление баланса по валютным позициям

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::SandboxApi.new
sandbox_set_currency_balance_request = TinkoffInvestClient::SandboxSetCurrencyBalanceRequest.new({currency: TinkoffInvestClient::SandboxCurrency::RUB, balance: 3.56}) # SandboxSetCurrencyBalanceRequest | Запрос на выставление баланса по валютным позициям
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Выставление баланса по валютным позициям
  result = api_instance.sandbox_currencies_balance_post(sandbox_set_currency_balance_request, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_currencies_balance_post: #{e}"
end
```

#### Using the sandbox_currencies_balance_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Empty>, Integer, Hash)> sandbox_currencies_balance_post_with_http_info(sandbox_set_currency_balance_request, opts)

```ruby
begin
  # Выставление баланса по валютным позициям
  data, status_code, headers = api_instance.sandbox_currencies_balance_post_with_http_info(sandbox_set_currency_balance_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Empty>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_currencies_balance_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sandbox_set_currency_balance_request** | [**SandboxSetCurrencyBalanceRequest**](SandboxSetCurrencyBalanceRequest.md) | Запрос на выставление баланса по валютным позициям |  |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sandbox_positions_balance_post

> <Empty> sandbox_positions_balance_post(sandbox_set_position_balance_request, opts)

Выставление баланса по инструментным позициям

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::SandboxApi.new
sandbox_set_position_balance_request = TinkoffInvestClient::SandboxSetPositionBalanceRequest.new({balance: 3.56}) # SandboxSetPositionBalanceRequest | Запрос на выставление баланса по инструментным позициям
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Выставление баланса по инструментным позициям
  result = api_instance.sandbox_positions_balance_post(sandbox_set_position_balance_request, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_positions_balance_post: #{e}"
end
```

#### Using the sandbox_positions_balance_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Empty>, Integer, Hash)> sandbox_positions_balance_post_with_http_info(sandbox_set_position_balance_request, opts)

```ruby
begin
  # Выставление баланса по инструментным позициям
  data, status_code, headers = api_instance.sandbox_positions_balance_post_with_http_info(sandbox_set_position_balance_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Empty>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_positions_balance_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sandbox_set_position_balance_request** | [**SandboxSetPositionBalanceRequest**](SandboxSetPositionBalanceRequest.md) | Запрос на выставление баланса по инструментным позициям |  |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sandbox_register_post

> <SandboxRegisterResponse> sandbox_register_post(opts)

Регистрация клиента в sandbox

Создание счета и валютных позиций для клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::SandboxApi.new
opts = {
  sandbox_register_request: TinkoffInvestClient::SandboxRegisterRequest.new # SandboxRegisterRequest | Запрос на создание счета и выставление баланса по валютным позициям
}

begin
  # Регистрация клиента в sandbox
  result = api_instance.sandbox_register_post(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_register_post: #{e}"
end
```

#### Using the sandbox_register_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SandboxRegisterResponse>, Integer, Hash)> sandbox_register_post_with_http_info(opts)

```ruby
begin
  # Регистрация клиента в sandbox
  data, status_code, headers = api_instance.sandbox_register_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SandboxRegisterResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_register_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sandbox_register_request** | [**SandboxRegisterRequest**](SandboxRegisterRequest.md) | Запрос на создание счета и выставление баланса по валютным позициям | [optional] |

### Return type

[**SandboxRegisterResponse**](SandboxRegisterResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sandbox_remove_post

> <Empty> sandbox_remove_post(opts)

Удаление счета

Удаление счета клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::SandboxApi.new
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Удаление счета
  result = api_instance.sandbox_remove_post(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_remove_post: #{e}"
end
```

#### Using the sandbox_remove_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Empty>, Integer, Hash)> sandbox_remove_post_with_http_info(opts)

```ruby
begin
  # Удаление счета
  data, status_code, headers = api_instance.sandbox_remove_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Empty>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling SandboxApi->sandbox_remove_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

