# TinkoffInvestClient::LimitOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |
| **payload** | [**PlacedLimitOrder**](PlacedLimitOrder.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::LimitOrderResponse.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

