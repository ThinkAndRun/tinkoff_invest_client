# TinkoffInvestClient::Empty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **payload** | **Object** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Empty.new(
  tracking_id: null,
  payload: null,
  status: null
)
```

