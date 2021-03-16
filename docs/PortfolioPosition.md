# TinkoffInvestClient::PortfolioPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **ticker** | **String** |  | [optional] |
| **isin** | **String** |  | [optional] |
| **instrument_type** | [**InstrumentType**](InstrumentType.md) |  |  |
| **balance** | **Float** |  |  |
| **blocked** | **Float** |  | [optional] |
| **expected_yield** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] |
| **lots** | **Integer** |  |  |
| **average_position_price** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] |
| **average_position_price_no_nkd** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] |
| **name** | **String** |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::PortfolioPosition.new(
  figi: null,
  ticker: null,
  isin: null,
  instrument_type: null,
  balance: null,
  blocked: null,
  expected_yield: null,
  lots: null,
  average_position_price: null,
  average_position_price_no_nkd: null,
  name: null
)
```

