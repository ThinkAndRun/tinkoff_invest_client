=begin
#OpenAPI

#tinkoff.ru/invest OpenAPI.

The version of the OpenAPI document: 1.0.0
Contact: al.a.volkov@tinkoff.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module TinkoffInvestClient
  class OperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Получение списка операций
    # @param from [Time] Начало временного промежутка
    # @param to [Time] Конец временного промежутка
    # @param [Hash] opts the optional parameters
    # @option opts [String] :figi Figi инструмента для фильтрации
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [OperationsResponse]
    def operations_get(from, to, opts = {})
      data, _status_code, _headers = operations_get_with_http_info(from, to, opts)
      data
    end

    # Получение списка операций
    # @param from [Time] Начало временного промежутка
    # @param to [Time] Конец временного промежутка
    # @param [Hash] opts the optional parameters
    # @option opts [String] :figi Figi инструмента для фильтрации
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [Array<(OperationsResponse, Integer, Hash)>] OperationsResponse data, response status code and response headers
    def operations_get_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OperationsApi.operations_get ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling OperationsApi.operations_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling OperationsApi.operations_get"
      end
      # resource path
      local_var_path = '/operations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'figi'] = opts[:'figi'] if !opts[:'figi'].nil?
      query_params[:'brokerAccountId'] = opts[:'broker_account_id'] if !opts[:'broker_account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OperationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sso_auth']

      new_options = opts.merge(
        :operation => :"OperationsApi.operations_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#operations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
