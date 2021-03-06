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
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Отмена заявки
    # @param order_id [String] ID заявки
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [Empty]
    def orders_cancel_post(order_id, opts = {})
      data, _status_code, _headers = orders_cancel_post_with_http_info(order_id, opts)
      data
    end

    # Отмена заявки
    # @param order_id [String] ID заявки
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [Array<(Empty, Integer, Hash)>] Empty data, response status code and response headers
    def orders_cancel_post_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_cancel_post ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrdersApi.orders_cancel_post"
      end
      # resource path
      local_var_path = '/orders/cancel'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orderId'] = order_id
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
      return_type = opts[:debug_return_type] || 'Empty'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sso_auth']

      new_options = opts.merge(
        :operation => :"OrdersApi.orders_cancel_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_cancel_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Получение списка активных заявок
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [OrdersResponse]
    def orders_get(opts = {})
      data, _status_code, _headers = orders_get_with_http_info(opts)
      data
    end

    # Получение списка активных заявок
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [Array<(OrdersResponse, Integer, Hash)>] OrdersResponse data, response status code and response headers
    def orders_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_get ...'
      end
      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'OrdersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sso_auth']

      new_options = opts.merge(
        :operation => :"OrdersApi.orders_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Создание лимитной заявки
    # @param figi [String] FIGI инструмента
    # @param limit_order_request [LimitOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [LimitOrderResponse]
    def orders_limit_order_post(figi, limit_order_request, opts = {})
      data, _status_code, _headers = orders_limit_order_post_with_http_info(figi, limit_order_request, opts)
      data
    end

    # Создание лимитной заявки
    # @param figi [String] FIGI инструмента
    # @param limit_order_request [LimitOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Номер счета (по умолчанию - Тинькофф)
    # @return [Array<(LimitOrderResponse, Integer, Hash)>] LimitOrderResponse data, response status code and response headers
    def orders_limit_order_post_with_http_info(figi, limit_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_limit_order_post ...'
      end
      # verify the required parameter 'figi' is set
      if @api_client.config.client_side_validation && figi.nil?
        fail ArgumentError, "Missing the required parameter 'figi' when calling OrdersApi.orders_limit_order_post"
      end
      # verify the required parameter 'limit_order_request' is set
      if @api_client.config.client_side_validation && limit_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'limit_order_request' when calling OrdersApi.orders_limit_order_post"
      end
      # resource path
      local_var_path = '/orders/limit-order'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'figi'] = figi
      query_params[:'brokerAccountId'] = opts[:'broker_account_id'] if !opts[:'broker_account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(limit_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'LimitOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sso_auth']

      new_options = opts.merge(
        :operation => :"OrdersApi.orders_limit_order_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_limit_order_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Создание рыночной заявки
    # @param figi [String] FIGI инструмента
    # @param market_order_request [MarketOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Уникальный идентификатор счета (по умолчанию - Тинькофф)
    # @return [MarketOrderResponse]
    def orders_market_order_post(figi, market_order_request, opts = {})
      data, _status_code, _headers = orders_market_order_post_with_http_info(figi, market_order_request, opts)
      data
    end

    # Создание рыночной заявки
    # @param figi [String] FIGI инструмента
    # @param market_order_request [MarketOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :broker_account_id Уникальный идентификатор счета (по умолчанию - Тинькофф)
    # @return [Array<(MarketOrderResponse, Integer, Hash)>] MarketOrderResponse data, response status code and response headers
    def orders_market_order_post_with_http_info(figi, market_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.orders_market_order_post ...'
      end
      # verify the required parameter 'figi' is set
      if @api_client.config.client_side_validation && figi.nil?
        fail ArgumentError, "Missing the required parameter 'figi' when calling OrdersApi.orders_market_order_post"
      end
      # verify the required parameter 'market_order_request' is set
      if @api_client.config.client_side_validation && market_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'market_order_request' when calling OrdersApi.orders_market_order_post"
      end
      # resource path
      local_var_path = '/orders/market-order'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'figi'] = figi
      query_params[:'brokerAccountId'] = opts[:'broker_account_id'] if !opts[:'broker_account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(market_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MarketOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['sso_auth']

      new_options = opts.merge(
        :operation => :"OrdersApi.orders_market_order_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#orders_market_order_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
