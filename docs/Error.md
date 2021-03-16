# TinkoffInvestClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Error&#39;] |
| **payload** | [**ErrorPayload**](ErrorPayload.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Error.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

