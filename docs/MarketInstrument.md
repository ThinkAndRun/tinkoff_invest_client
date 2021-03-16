# TinkoffInvestClient::MarketInstrument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **ticker** | **String** |  |  |
| **isin** | **String** |  | [optional] |
| **min_price_increment** | **Float** | Шаг цены | [optional] |
| **lot** | **Integer** |  |  |
| **min_quantity** | **Integer** | Минимальное число инструментов для покупки должно быть не меньше, чем размер лота х количество лотов | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **name** | **String** |  |  |
| **type** | [**InstrumentType**](InstrumentType.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::MarketInstrument.new(
  figi: null,
  ticker: null,
  isin: null,
  min_price_increment: null,
  lot: null,
  min_quantity: null,
  currency: null,
  name: null,
  type: null
)
```

