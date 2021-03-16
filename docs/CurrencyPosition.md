# TinkoffInvestClient::CurrencyPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](Currency.md) |  |  |
| **balance** | **Float** |  |  |
| **blocked** | **Float** |  | [optional] |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::CurrencyPosition.new(
  currency: null,
  balance: null,
  blocked: null
)
```

