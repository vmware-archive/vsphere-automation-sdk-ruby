=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi

# vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiRestNavigationHttpMethod
    
    GET = 'GET'.freeze
    POST = 'POST'.freeze
    PUT = 'PUT'.freeze
    DELETE = 'DELETE'.freeze
    OPTIONS = 'OPTIONS'.freeze
    PATCH = 'PATCH'.freeze
    TRACE = 'TRACE'.freeze
    CONNECT = 'CONNECT'.freeze
    HEAD = 'HEAD'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiRestNavigationHttpMethod.constants.select { |c| VapiRestNavigationHttpMethod::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiRestNavigationHttpMethod" if constantValues.empty?
      value
    end
  end
  end
end
