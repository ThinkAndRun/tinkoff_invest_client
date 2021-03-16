# TinkoffInvestClient::OrdersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |
| **payload** | [**Array&lt;Order&gt;**](Order.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::OrdersResponse.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

