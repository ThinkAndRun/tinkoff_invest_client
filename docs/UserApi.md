# TinkoffInvestClient::UserApi

All URIs are relative to *https://api-invest.tinkoff.ru/openapi*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_accounts_get**](UserApi.md#user_accounts_get) | **GET** /user/accounts | Получение брокерских счетов клиента |


## user_accounts_get

> <UserAccountsResponse> user_accounts_get

Получение брокерских счетов клиента

### Examples

```ruby
require 'time'
require 'tinkoff_invest_client'
# setup authorization
TinkoffInvestClient.configure do |config|
  # Configure Bearer authorization: sso_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TinkoffInvestClient::UserApi.new

begin
  # Получение брокерских счетов клиента
  result = api_instance.user_accounts_get
  p result
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling UserApi->user_accounts_get: #{e}"
end
```

#### Using the user_accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAccountsResponse>, Integer, Hash)> user_accounts_get_with_http_info

```ruby
begin
  # Получение брокерских счетов клиента
  data, status_code, headers = api_instance.user_accounts_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAccountsResponse>
rescue TinkoffInvestClient::ApiError => e
  puts "Error when calling UserApi->user_accounts_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserAccountsResponse**](UserAccountsResponse.md)

### Authorization

[sso_auth](../README.md#sso_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

