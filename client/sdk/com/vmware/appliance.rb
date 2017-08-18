#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
    end
  end
end

module Com::Vmware::Appliance
  # ``Com::Vmware::Appliance::Monitoring``   class  provides  methods  Get and list monitoring data for requested item.
  class Monitoring < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.monitoring')

    QUERY_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('query', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'item' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest')
      ),
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::MonitoredItemData')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    LIST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('list', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::MonitoredItem')),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'stat_id' => VAPI::Bindings::IdType.new('com.vmware.appliance.monitoring')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::MonitoredItem'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'query' => QUERY_INFO,
      'list' => LIST_INFO,
      'get' => GET_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Get monitoring data.
    #
    # @param item [Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest]
    #     MonitoredItemDataRequest Structure
    # @return [Array<Com::Vmware::Appliance::Monitoring::MonitoredItemData>]
    #     list of MonitoredItemData structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def query(item)
      invoke_with_info(QUERY_INFO,
                       'item' => item)
    end

    # Get monitored items list
    #
    # @return [Array<Com::Vmware::Appliance::Monitoring::MonitoredItem>]
    #     list of names
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def list
      invoke_with_info(LIST_INFO)
    end

    # Get monitored item info
    #
    # @param stat_id [String]
    #     statistic item id
    # @return [Com::Vmware::Appliance::Monitoring::MonitoredItem]
    #     MonitoredItem structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get(stat_id)
      invoke_with_info(GET_INFO,
                       'stat_id' => stat_id)
    end

    # ``Com::Vmware::Appliance::Monitoring::MonitoredItemData``   class  Structure representing monitored item data.
    # @!attribute [rw] name
    #     @return [String]
    #     Monitored item IDs Ex: CPU, MEMORY, STORAGE_TOTAL
    # @!attribute [rw] interval
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     interval between values in hours, minutes
    # @!attribute [rw] function
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     aggregation function
    # @!attribute [rw] start_time
    #     @return [DateTime]
    #     Starting time
    # @!attribute [rw] end_time
    #     @return [DateTime]
    #     Ending time
    # @!attribute [rw] data
    #     @return [Array<String>]
    #     list of values
    class MonitoredItemData < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.monitoring.monitored_item_data',
            {
              'name' => VAPI::Bindings::IdType.new('com.vmware.appliance.monitoring'),
              'interval' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::IntervalType'),
              'function' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::FunctionType'),
              'start_time' => VAPI::Bindings::DateTimeType.instance,
              'end_time' => VAPI::Bindings::DateTimeType.instance,
              'data' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
            },
            MonitoredItemData,
            false,
            nil
          )
        end
      end

      attr_accessor :name,
                    :interval,
                    :function,
                    :start_time,
                    :end_time,
                    :data

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest``   class  Structure representing requested monitored item data.
    # @!attribute [rw] names
    #     @return [Array<String>]
    #     monitored item IDs Ex: CPU, MEMORY
    # @!attribute [rw] interval
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     interval between values in hours, minutes
    # @!attribute [rw] function
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     aggregation function
    # @!attribute [rw] start_time
    #     @return [DateTime]
    #     Starting time
    # @!attribute [rw] end_time
    #     @return [DateTime]
    #     Ending time
    class MonitoredItemDataRequest < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.monitoring.monitored_item_data_request',
            {
              'names' => VAPI::Bindings::ListType.new(VAPI::Bindings::IdType.new),
              'interval' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::IntervalType'),
              'function' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Monitoring::FunctionType'),
              'start_time' => VAPI::Bindings::DateTimeType.instance,
              'end_time' => VAPI::Bindings::DateTimeType.instance
            },
            MonitoredItemDataRequest,
            false,
            nil
          )
        end
      end

      attr_accessor :names,
                    :interval,
                    :function,
                    :start_time,
                    :end_time

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Monitoring::MonitoredItem``   class  Structure representing requested monitored item data.
    # @!attribute [rw] id
    #     @return [String]
    #     monitored item ID Ex: CPU, MEMORY
    # @!attribute [rw] name
    #     @return [String]
    #     monitored item name Ex: "Network write speed"
    # @!attribute [rw] units
    #     @return [String]
    #     Y-axis label EX: "Mbps", "%"
    # @!attribute [rw] category
    #     @return [String]
    #     category Ex: network, storage etc
    # @!attribute [rw] instance
    #     @return [String]
    #     instance name Ex: eth0
    # @!attribute [rw] description
    #     @return [String]
    #     monitored item description Ex: com.vmware.applmgmt.mon.descr.net.rx.packetRate.eth0
    class MonitoredItem < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.monitoring.monitored_item',
            {
              'id' => VAPI::Bindings::IdType.new('com.vmware.appliance.monitoring'),
              'name' => VAPI::Bindings::StringType.instance,
              'units' => VAPI::Bindings::StringType.instance,
              'category' => VAPI::Bindings::StringType.instance,
              'instance' => VAPI::Bindings::StringType.instance,
              'description' => VAPI::Bindings::StringType.instance
            },
            MonitoredItem,
            false,
            nil
          )
        end
      end

      attr_accessor :id,
                    :name,
                    :units,
                    :category,
                    :instance,
                    :description

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Monitoring::FunctionType``   enumerated type  Defines aggregation function
    # @!attribute [rw] count
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     Aggregation takes count per period (sum)
    # @!attribute [rw] max
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     Aggregation takes maximums per period
    # @!attribute [rw] avg
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     Aggregation takes average per period
    # @!attribute [rw] min
    #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
    #     Aggregation takes minimums per period
    class FunctionType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.monitoring.function_type',
            FunctionType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [FunctionType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          FunctionType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] count
      #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
      #     Aggregation takes count per period (sum)
      COUNT = FunctionType.send(:new, 'COUNT')

      # @!attribute [rw] max
      #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
      #     Aggregation takes maximums per period
      MAX = FunctionType.send(:new, 'MAX')

      # @!attribute [rw] avg
      #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
      #     Aggregation takes average per period
      AVG = FunctionType.send(:new, 'AVG')

      # @!attribute [rw] min
      #     @return [Com::Vmware::Appliance::Monitoring::FunctionType]
      #     Aggregation takes minimums per period
      MIN = FunctionType.send(:new, 'MIN')
    end
    # ``Com::Vmware::Appliance::Monitoring::IntervalType``   enumerated type  Defines interval between the values in hours and mins, for which aggregation will apply
    # @!attribute [rw] minute_s30
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     Thirty minutes interval between values. One week is 336 values.
    # @!attribute [rw] hour_s2
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     Two hours interval between values. One month has 360 values.
    # @!attribute [rw] minute_s5
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     Five minutes interval between values (finest). One day would have 288 values, one week is 2016.
    # @!attribute [rw] da_y1
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     24 hours interval between values. One year has 365 values.
    # @!attribute [rw] hour_s6
    #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
    #     Six hour interval between values. One quarter is 360 values.
    class IntervalType < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.monitoring.interval_type',
            IntervalType
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [IntervalType] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          IntervalType.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] minute_s30
      #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
      #     Thirty minutes interval between values. One week is 336 values.
      MINUTE_S30 = IntervalType.send(:new, 'MINUTE_S30')

      # @!attribute [rw] hour_s2
      #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
      #     Two hours interval between values. One month has 360 values.
      HOUR_S2 = IntervalType.send(:new, 'HOUR_S2')

      # @!attribute [rw] minute_s5
      #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
      #     Five minutes interval between values (finest). One day would have 288 values, one week is 2016.
      MINUTE_S5 = IntervalType.send(:new, 'MINUTE_S5')

      # @!attribute [rw] da_y1
      #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
      #     24 hours interval between values. One year has 365 values.
      DA_Y1 = IntervalType.send(:new, 'DA_Y1')

      # @!attribute [rw] hour_s6
      #     @return [Com::Vmware::Appliance::Monitoring::IntervalType]
      #     Six hour interval between values. One quarter is 360 values.
      HOUR_S6 = IntervalType.send(:new, 'HOUR_S6')
    end
  end
end
