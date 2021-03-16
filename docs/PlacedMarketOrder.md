# TinkoffInvestClient::PlacedMarketOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **String** |  |  |
| **operation** | [**OperationType**](OperationType.md) |  |  |
| **status** | [**OrderStatus**](OrderStatus.md) |  |  |
| **reject_reason** | **String** |  | [optional] |
| **message** | **String** | Сообщение об ошибке | [optional] |
| **requested_lots** | **Integer** |  |  |
| **executed_lots** | **Integer** |  |  |
| **commission** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::PlacedMarketOrder.new(
  order_id: null,
  operation: null,
  status: null,
  reject_reason: null,
  message: null,
  requested_lots: null,
  executed_lots: null,
  commission: null
)
```

