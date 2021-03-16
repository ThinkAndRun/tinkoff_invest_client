# TinkoffInvestClient::MarketInstrumentListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |
| **payload** | [**MarketInstrumentList**](MarketInstrumentList.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::MarketInstrumentListResponse.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

