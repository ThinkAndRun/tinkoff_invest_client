=begin
#OpenAPI

#tinkoff.ru/invest OpenAPI.

The version of the OpenAPI document: 1.0.0
Contact: al.a.volkov@tinkoff.ru
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module TinkoffInvestClient
  class Orderbook
    attr_accessor :figi

    attr_accessor :depth

    attr_accessor :bids

    attr_accessor :asks

    attr_accessor :trade_status

    # Шаг цены
    attr_accessor :min_price_increment

    # Номинал для облигаций
    attr_accessor :face_value

    attr_accessor :last_price

    attr_accessor :close_price

    # Верхняя граница цены
    attr_accessor :limit_up

    # Нижняя граница цены
    attr_accessor :limit_down

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'figi' => :'figi',
        :'depth' => :'depth',
        :'bids' => :'bids',
        :'asks' => :'asks',
        :'trade_status' => :'tradeStatus',
        :'min_price_increment' => :'minPriceIncrement',
        :'face_value' => :'faceValue',
        :'last_price' => :'lastPrice',
        :'close_price' => :'closePrice',
        :'limit_up' => :'limitUp',
        :'limit_down' => :'limitDown'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'figi' => :'String',
        :'depth' => :'Integer',
        :'bids' => :'Array<OrderResponse>',
        :'asks' => :'Array<OrderResponse>',
        :'trade_status' => :'TradeStatus',
        :'min_price_increment' => :'Float',
        :'face_value' => :'Float',
        :'last_price' => :'Float',
        :'close_price' => :'Float',
        :'limit_up' => :'Float',
        :'limit_down' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TinkoffInvestClient::Orderbook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TinkoffInvestClient::Orderbook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'figi')
        self.figi = attributes[:'figi']
      end

      if attributes.key?(:'depth')
        self.depth = attributes[:'depth']
      end

      if attributes.key?(:'bids')
        if (value = attributes[:'bids']).is_a?(Array)
          self.bids = value
        end
      end

      if attributes.key?(:'asks')
        if (value = attributes[:'asks']).is_a?(Array)
          self.asks = value
        end
      end

      if attributes.key?(:'trade_status')
        self.trade_status = attributes[:'trade_status']
      end

      if attributes.key?(:'min_price_increment')
        self.min_price_increment = attributes[:'min_price_increment']
      end

      if attributes.key?(:'face_value')
        self.face_value = attributes[:'face_value']
      end

      if attributes.key?(:'last_price')
        self.last_price = attributes[:'last_price']
      end

      if attributes.key?(:'close_price')
        self.close_price = attributes[:'close_price']
      end

      if attributes.key?(:'limit_up')
        self.limit_up = attributes[:'limit_up']
      end

      if attributes.key?(:'limit_down')
        self.limit_down = attributes[:'limit_down']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @figi.nil?
        invalid_properties.push('invalid value for "figi", figi cannot be nil.')
      end

      if @depth.nil?
        invalid_properties.push('invalid value for "depth", depth cannot be nil.')
      end

      if @bids.nil?
        invalid_properties.push('invalid value for "bids", bids cannot be nil.')
      end

      if @asks.nil?
        invalid_properties.push('invalid value for "asks", asks cannot be nil.')
      end

      if @trade_status.nil?
        invalid_properties.push('invalid value for "trade_status", trade_status cannot be nil.')
      end

      if @min_price_increment.nil?
        invalid_properties.push('invalid value for "min_price_increment", min_price_increment cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @figi.nil?
      return false if @depth.nil?
      return false if @bids.nil?
      return false if @asks.nil?
      return false if @trade_status.nil?
      return false if @min_price_increment.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          figi == o.figi &&
          depth == o.depth &&
          bids == o.bids &&
          asks == o.asks &&
          trade_status == o.trade_status &&
          min_price_increment == o.min_price_increment &&
          face_value == o.face_value &&
          last_price == o.last_price &&
          close_price == o.close_price &&
          limit_up == o.limit_up &&
          limit_down == o.limit_down
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [figi, depth, bids, asks, trade_status, min_price_increment, face_value, last_price, close_price, limit_up, limit_down].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TinkoffInvestClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
