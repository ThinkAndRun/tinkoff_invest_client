# TinkoffInvestClient::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **figi** | **String** |  |  |
| **operation** | [**OperationType**](OperationType.md) |  |  |
| **status** | [**OrderStatus**](OrderStatus.md) |  |  |
| **requested_lots** | **Integer** |  |  |
| **executed_lots** | **Integer** |  |  |
| **type** | [**OrderType**](OrderType.md) |  |  |
| **price** | **Float** |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Order.new(
  order_id: null,
  figi: null,
  operation: null,
  status: null,
  requested_lots: null,
  executed_lots: null,
  type: null,
  price: null
)
```

