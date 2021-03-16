# TinkoffInvestClient::SearchMarketInstrument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **ticker** | **String** |  |  |
| **isin** | **String** |  | [optional] |
| **min_price_increment** | **Float** | Шаг цены | [optional] |
| **lot** | **Integer** |  |  |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **name** | **String** |  |  |
| **type** | [**InstrumentType**](InstrumentType.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::SearchMarketInstrument.new(
  figi: null,
  ticker: null,
  isin: null,
  min_price_increment: null,
  lot: null,
  currency: null,
  name: null,
  type: null
)
```

