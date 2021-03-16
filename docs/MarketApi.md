# TinkoffInvestClient::MarketApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**market_bonds_get**](MarketApi.md#market_bonds_get) | **GET** /market/bonds | Получение списка облигаций |
| [**market_candles_get**](MarketApi.md#market_candles_get) | **GET** /market/candles | Получение исторических свечей по FIGI |
| [**market_currencies_get**](MarketApi.md#market_currencies_get) | **GET** /market/currencies | Получение списка валютных пар |
| [**market_etfs_get**](MarketApi.md#market_etfs_get) | **GET** /market/etfs | Получение списка ETF |
| [**market_orderbook_get**](MarketApi.md#market_orderbook_get) | **GET** /market/orderbook | Получение стакана по FIGI |
| [**market_search_by_figi_get**](MarketApi.md#market_search_by_figi_get) | **GET** /market/search/by-figi | Получение инструмента по FIGI |
| [**market_search_by_ticker_get**](MarketApi.md#market_search_by_ticker_get) | **GET** /market/search/by-ticker | Получение инструмента по тикеру |
| [**market_stocks_get**](MarketApi.md#market_stocks_get) | **GET** /market/stocks | Получение списка акций |


## market_bonds_get

> <MarketInstrumentListResponse> market_bonds_get

Получение списка облигаций

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new

begin
  # Получение списка облигаций
  result = api_instance.market_bonds_get
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_bonds_get: #{e}"
end
```

#### Using the market_bonds_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketInstrumentListResponse>, Integer, Hash)> market_bonds_get_with_http_info

```ruby
begin
  # Получение списка облигаций
  data, status_code, headers = api_instance.market_bonds_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketInstrumentListResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_bonds_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_candles_get

> <CandlesResponse> market_candles_get(figi, from, to, interval)

Получение исторических свечей по FIGI

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new
figi = 'figi_example' # String | FIGI
from = Time.parse('2019-08-19T18:38:33.131642+03:00') # Time | Начало временного промежутка
to = Time.parse('2019-08-19T18:38:33.131642+03:00') # Time | Конец временного промежутка
interval = TinkoffInvestClient::CandleResolution::N1MIN # CandleResolution | Интервал свечи

begin
  # Получение исторических свечей по FIGI
  result = api_instance.market_candles_get(figi, from, to, interval)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_candles_get: #{e}"
end
```

#### Using the market_candles_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CandlesResponse>, Integer, Hash)> market_candles_get_with_http_info(figi, from, to, interval)

```ruby
begin
  # Получение исторических свечей по FIGI
  data, status_code, headers = api_instance.market_candles_get_with_http_info(figi, from, to, interval)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CandlesResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_candles_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** | FIGI |  |
| **from** | **Time** | Начало временного промежутка |  |
| **to** | **Time** | Конец временного промежутка |  |
| **interval** | [**CandleResolution**](.md) | Интервал свечи |  |

### Return type

[**CandlesResponse**](CandlesResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_currencies_get

> <MarketInstrumentListResponse> market_currencies_get

Получение списка валютных пар

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new

begin
  # Получение списка валютных пар
  result = api_instance.market_currencies_get
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_currencies_get: #{e}"
end
```

#### Using the market_currencies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketInstrumentListResponse>, Integer, Hash)> market_currencies_get_with_http_info

```ruby
begin
  # Получение списка валютных пар
  data, status_code, headers = api_instance.market_currencies_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketInstrumentListResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_currencies_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_etfs_get

> <MarketInstrumentListResponse> market_etfs_get

Получение списка ETF

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new

begin
  # Получение списка ETF
  result = api_instance.market_etfs_get
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_etfs_get: #{e}"
end
```

#### Using the market_etfs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketInstrumentListResponse>, Integer, Hash)> market_etfs_get_with_http_info

```ruby
begin
  # Получение списка ETF
  data, status_code, headers = api_instance.market_etfs_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketInstrumentListResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_etfs_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_orderbook_get

> <OrderbookResponse> market_orderbook_get(figi, depth)

Получение стакана по FIGI

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new
figi = 'figi_example' # String | FIGI
depth = 56 # Integer | Глубина стакана [1..20]

begin
  # Получение стакана по FIGI
  result = api_instance.market_orderbook_get(figi, depth)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_orderbook_get: #{e}"
end
```

#### Using the market_orderbook_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderbookResponse>, Integer, Hash)> market_orderbook_get_with_http_info(figi, depth)

```ruby
begin
  # Получение стакана по FIGI
  data, status_code, headers = api_instance.market_orderbook_get_with_http_info(figi, depth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderbookResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_orderbook_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** | FIGI |  |
| **depth** | **Integer** | Глубина стакана [1..20] |  |

### Return type

[**OrderbookResponse**](OrderbookResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_search_by_figi_get

> <SearchMarketInstrumentResponse> market_search_by_figi_get(figi)

Получение инструмента по FIGI

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new
figi = 'figi_example' # String | FIGI

begin
  # Получение инструмента по FIGI
  result = api_instance.market_search_by_figi_get(figi)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_search_by_figi_get: #{e}"
end
```

#### Using the market_search_by_figi_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchMarketInstrumentResponse>, Integer, Hash)> market_search_by_figi_get_with_http_info(figi)

```ruby
begin
  # Получение инструмента по FIGI
  data, status_code, headers = api_instance.market_search_by_figi_get_with_http_info(figi)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchMarketInstrumentResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_search_by_figi_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** | FIGI |  |

### Return type

[**SearchMarketInstrumentResponse**](SearchMarketInstrumentResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_search_by_ticker_get

> <MarketInstrumentListResponse> market_search_by_ticker_get(ticker)

Получение инструмента по тикеру

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new
ticker = 'ticker_example' # String | Тикер инструмента

begin
  # Получение инструмента по тикеру
  result = api_instance.market_search_by_ticker_get(ticker)
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_search_by_ticker_get: #{e}"
end
```

#### Using the market_search_by_ticker_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketInstrumentListResponse>, Integer, Hash)> market_search_by_ticker_get_with_http_info(ticker)

```ruby
begin
  # Получение инструмента по тикеру
  data, status_code, headers = api_instance.market_search_by_ticker_get_with_http_info(ticker)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketInstrumentListResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_search_by_ticker_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | Тикер инструмента |  |

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## market_stocks_get

> <MarketInstrumentListResponse> market_stocks_get

Получение списка акций

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::MarketApi.new

begin
  # Получение списка акций
  result = api_instance.market_stocks_get
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_stocks_get: #{e}"
end
```

#### Using the market_stocks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarketInstrumentListResponse>, Integer, Hash)> market_stocks_get_with_http_info

```ruby
begin
  # Получение списка акций
  data, status_code, headers = api_instance.market_stocks_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarketInstrumentListResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling MarketApi->market_stocks_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MarketInstrumentListResponse**](MarketInstrumentListResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

