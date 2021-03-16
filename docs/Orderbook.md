# TinkoffInvestClient::Orderbook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **depth** | **Integer** |  |  |
| **bids** | [**Array&lt;OrderResponse&gt;**](OrderResponse.md) |  |  |
| **asks** | [**Array&lt;OrderResponse&gt;**](OrderResponse.md) |  |  |
| **trade_status** | [**TradeStatus**](TradeStatus.md) |  |  |
| **min_price_increment** | **Float** | Шаг цены |  |
| **face_value** | **Float** | Номинал для облигаций | [optional] |
| **last_price** | **Float** |  | [optional] |
| **close_price** | **Float** |  | [optional] |
| **limit_up** | **Float** | Верхняя граница цены | [optional] |
| **limit_down** | **Float** | Нижняя граница цены | [optional] |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Orderbook.new(
  figi: null,
  depth: null,
  bids: null,
  asks: null,
  trade_status: null,
  min_price_increment: null,
  face_value: null,
  last_price: null,
  close_price: null,
  limit_up: null,
  limit_down: null
)
```

