# TinkoffInvestClient::SandboxRegisterResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tracking_id** | **String** |  |  |
| **status** | **String** |  | [default to &#39;Ok&#39;] |
| **payload** | [**SandboxAccount**](SandboxAccount.md) |  |  |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::SandboxRegisterResponse.new(
  tracking_id: null,
  status: null,
  payload: null
)
```

