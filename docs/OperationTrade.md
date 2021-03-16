# TinkoffInvestClient::OperationTrade

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_id** | **String** |  |  |
| **date** | **Time** | ISO8601 |  |
| **price** | **Float** |  |  |
| **quantity** | **Integer** |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::OperationTrade.new(
  trade_id: null,
  date: 2019-08-19T18:38:33.131642+03:00,
  price: null,
  quantity: null
)
```

