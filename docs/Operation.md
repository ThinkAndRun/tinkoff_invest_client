# TinkoffInvestClient::Operation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | [**OperationStatus**](OperationStatus.md) |  |  |
| **trades** | [**Array&lt;OperationTrade&gt;**](OperationTrade.md) |  | [optional] |
| **commission** | [**MoneyAmount**](MoneyAmount.md) |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  |  |
| **payment** | **Float** |  |  |
| **price** | **Float** |  | [optional] |
| **quantity** | **Integer** | Число инструментов в выставленной заявке | [optional] |
| **quantity_executed** | **Integer** | Число инструментов, исполненных в заявке | [optional] |
| **figi** | **String** |  | [optional] |
| **instrument_type** | [**InstrumentType**](InstrumentType.md) |  | [optional] |
| **is_margin_call** | **Boolean** |  |  |
| **date** | **Time** | ISO8601 |  |
| **operation_type** | [**OperationTypeWithCommission**](OperationTypeWithCommission.md) |  | [optional] |

## Example

```ruby
require 'tinkoff_invest_client'

instance = TinkoffInvestClient::Operation.new(
  id: null,
  status: null,
  trades: null,
  commission: null,
  currency: null,
  payment: null,
  price: null,
  quantity: null,
  quantity_executed: null,
  figi: null,
  instrument_type: null,
  is_margin_call: null,
  date: 2019-08-19T18:38:33.131642+03:00,
  operation_type: null
)
```

