# TinkoffInvestClient::OrdersApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_cancel_post**](OrdersApi.md#orders_cancel_post) | **POST** /orders/cancel | Отмена заявки |
| [**orders_get**](OrdersApi.md#orders_get) | **GET** /orders | Получение списка активных заявок |
| [**orders_limit_order_post**](OrdersApi.md#orders_limit_order_post) | **POST** /orders/limit-order | Создание лимитной заявки |
| [**orders_market_order_post**](OrdersApi.md#orders_market_order_post) | **POST** /orders/market-order | Создание рыночной заявки |


## orders_cancel_post

> <Empty> orders_cancel_post(order_id, opts)

Отмена заявки

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::OrdersApi.new
order_id = 'order_id_example' # String | ID заявки
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Отмена заявки
  result = api_instance.orders_cancel_post(order_id, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_cancel_post: #{e}"
end
```

#### Using the orders_cancel_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Empty>, Integer, Hash)> orders_cancel_post_with_http_info(order_id, opts)

```ruby
begin
  # Отмена заявки
  data, status_code, headers = api_instance.orders_cancel_post_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Empty>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_cancel_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** | ID заявки |  |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**Empty**](Empty.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_get

> <OrdersResponse> orders_get(opts)

Получение списка активных заявок

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::OrdersApi.new
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Получение списка активных заявок
  result = api_instance.orders_get(opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_get: #{e}"
end
```

#### Using the orders_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrdersResponse>, Integer, Hash)> orders_get_with_http_info(opts)

```ruby
begin
  # Получение списка активных заявок
  data, status_code, headers = api_instance.orders_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrdersResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**OrdersResponse**](OrdersResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## orders_limit_order_post

> <LimitOrderResponse> orders_limit_order_post(figi, limit_order_request, opts)

Создание лимитной заявки

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::OrdersApi.new
figi = 'figi_example' # String | FIGI инструмента
limit_order_request = TinkoffInvestClient::LimitOrderRequest.new({lots: 37, operation: TinkoffInvestClient::OperationType::BUY, price: 3.56}) # LimitOrderRequest | 
opts = {
  broker_account_id: 'broker_account_id_example' # String | Номер счета (по умолчанию - Тинькофф)
}

begin
  # Создание лимитной заявки
  result = api_instance.orders_limit_order_post(figi, limit_order_request, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_limit_order_post: #{e}"
end
```

#### Using the orders_limit_order_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LimitOrderResponse>, Integer, Hash)> orders_limit_order_post_with_http_info(figi, limit_order_request, opts)

```ruby
begin
  # Создание лимитной заявки
  data, status_code, headers = api_instance.orders_limit_order_post_with_http_info(figi, limit_order_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LimitOrderResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_limit_order_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** | FIGI инструмента |  |
| **limit_order_request** | [**LimitOrderRequest**](LimitOrderRequest.md) |  |  |
| **broker_account_id** | **String** | Номер счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**LimitOrderResponse**](LimitOrderResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## orders_market_order_post

> <MarketOrderResponse> orders_market_order_post(figi, market_order_request, opts)

Создание рыночной заявки

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::OrdersApi.new
figi = 'figi_example' # String | FIGI инструмента
market_order_request = TinkoffInvestClient::MarketOrderRequest.new({lots: 37, operation: TinkoffInvestClient::OperationType::BUY}) # MarketOrderRequest | 
opts = {
  broker_account_id: 'broker_account_id_example' # String | Уникальный идентификатор счета (по умолчанию - Тинькофф)
}

begin
  # Создание рыночной заявки
  result = api_instance.orders_market_order_post(figi, market_order_request, opts)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_market_order_post: #{e}"
end
```

#### Using the orders_market_order_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketOrderResponse>, Integer, Hash)> orders_market_order_post_with_http_info(figi, market_order_request, opts)

```ruby
begin
  # Создание рыночной заявки
  data, status_code, headers = api_instance.orders_market_order_post_with_http_info(figi, market_order_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketOrderResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling OrdersApi->orders_market_order_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** | FIGI инструмента |  |
| **market_order_request** | [**MarketOrderRequest**](MarketOrderRequest.md) |  |  |
| **broker_account_id** | **String** | Уникальный идентификатор счета (по умолчанию - Тинькофф) | [optional] |

### Return type

[**MarketOrderResponse**](MarketOrderResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

