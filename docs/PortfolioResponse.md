# TinkoffInvestClient::PortfolioResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |
| **payload** | [**Portfolio**](Portfolio.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::PortfolioResponse.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

