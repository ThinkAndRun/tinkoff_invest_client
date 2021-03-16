# TinkoffInvestClient::OperationsApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**operations_get**](OperationsApi.md#operations_get) | **GET** /operations | Получение списка операций |


## operations_get

> <OperationsResponse> operations_get(from, to, opts)

Получение списка операций

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::OperationsApi.new
from = Time.parse('2019-08-19T18:38:33.131642+03:00') # Time | Начало временного промежутка
to = Time.parse('2019-08-19T18:38:33.131642+03:00') # Time | Конец временного промежутка
opts = {
  figi: 'figi_example', # String | Figi инструмента для фильтрации
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Получение списка операций
  result = api_instance.operations_get(from, to, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OperationsApi->operations_get: #{e}"
end
```

#### Using the operations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OperationsResponse>, Integer, Hash)> operations_get_with_http_info(from, to, opts)

```ruby
begin
  # Получение списка операций
  data, status_code, headers = api_instance.operations_get_with_http_info(from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OperationsResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OperationsApi->operations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | Начало временного промежутка |  |
| **to** | **Time** | Конец временного промежутка |  |
| **figi** | **String** | Figi инструмента для фильтрации | [optional] |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**OperationsResponse**](OperationsResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

