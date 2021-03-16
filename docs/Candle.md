# TinkoffInvestClient::Candle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **figi** | **String** |  |  |
| **interval** | [**CandleResolution**](CandleResolution.md) |  |  |
| **o** | **Float** |  |  |
| **c** | **Float** |  |  |
| **h** | **Float** |  |  |
| **l** | **Float** |  |  |
| **v** | **Integer** |  |  |
| **time** | **Time** | ISO8601 |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Candle.new(
  figi: null,
  interval: null,
  o: null,
  c: null,
  h: null,
  l: null,
  v: null,
  time: 2019-08-19T18:38:33.131642+03:00
)
```

