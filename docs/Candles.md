# TinkoffInvestClient::Candles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **interval** | [**CandleResolution**](CandleResolution.md) |  |  |
| **candles** | [**Array&lt;Candle&gt;**](Candle.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Candles.new(
  figi: null,
  interval: null,
  candles: null
)
```

