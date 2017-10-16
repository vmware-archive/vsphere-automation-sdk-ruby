#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.appliance.techpreview.monitoring.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Appliance
      module Techpreview
        module Monitoring
        end
      end
    end
  end
end

module Com::Vmware::Appliance::Techpreview::Monitoring
  # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp``   class  provides  methods  SNMP agent operations.
  class Snmp < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.appliance.techpreview.monitoring.snmp')

    RESET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('reset', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    ENABLE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('enable', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    HASH_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('hash', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig')
      ),
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    LIMITS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('limits', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    GET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('get', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    DISABLE_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('disable', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SET_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('set', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'config' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    TEST_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('test', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    STATS_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('stats', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new,
      VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats'),
      {
        'com.vmware.vapi.std.errors.error' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::Error')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'reset' => RESET_INFO,
      'enable' => ENABLE_INFO,
      'hash' => HASH_INFO,
      'limits' => LIMITS_INFO,
      'get' => GET_INFO,
      'disable' => DISABLE_INFO,
      'set' => SET_INFO,
      'test' => TEST_INFO,
      'stats' => STATS_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Restore settings to factory defaults.
    #
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def reset
      invoke_with_info(RESET_INFO)
    end

    # Start a disabled SNMP agent.
    #
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def enable
      invoke_with_info(ENABLE_INFO)
    end

    # Generate localized keys for secure SNMPv3 communications.
    #
    # @param config [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig]
    #     SNMP hash configuration.
    # @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults]
    #     SNMP hash result
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def hash(config)
      invoke_with_info(HASH_INFO,
                       'config' => config)
    end

    # Get SNMP limits information.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits]
    #     SNMP limits structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def limits
      invoke_with_info(LIMITS_INFO)
    end

    # Return an SNMP agent configuration.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly]
    #     SNMP config structure
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def get
      invoke_with_info(GET_INFO)
    end

    # Stop an enabled SNMP agent.
    #
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def disable
      invoke_with_info(DISABLE_INFO)
    end

    # Set SNMP configuration.
    #
    # @param config [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig]
    #     SNMP configuration.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def set(config)
      invoke_with_info(SET_INFO,
                       'config' => config)
    end

    # Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
    #
    # @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults]
    #     SNMP test result
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def test
      invoke_with_info(TEST_INFO)
    end

    # Generate diagnostics report for snmp agent.
    #
    # @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats]
    #     SNMP stats
    # @raise [Com::Vmware::Vapi::Std::Errors::Error]
    #     Generic error
    def stats
      invoke_with_info(STATS_INFO)
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPLimits``   class  Structure that provides various limits of the SNMP agent.
    # @!attribute [rw] max_communities
    #     @return [Fixnum]
    #     Set up maximum communities limit
    # @!attribute [rw] max_trap_destinations_v1
    #     @return [Fixnum]
    #     Set up max trap destinations limit
    # @!attribute [rw] max_destinations_v3
    #     @return [Fixnum]
    #     Set up max destinations limit
    # @!attribute [rw] max_notification_filters
    #     @return [Fixnum]
    #     Set up max notification Filters
    # @!attribute [rw] max_community_length
    #     @return [Fixnum]
    #     Set up max community length
    # @!attribute [rw] max_buffer_size
    #     @return [Fixnum]
    #     Set up max buffer size
    class SNMPLimits < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_limits',
            {
              'max_communities' => VAPI::Bindings::IntegerType.instance,
              'max_trap_destinations_v1' => VAPI::Bindings::IntegerType.instance,
              'max_destinations_v3' => VAPI::Bindings::IntegerType.instance,
              'max_notification_filters' => VAPI::Bindings::IntegerType.instance,
              'max_community_length' => VAPI::Bindings::IntegerType.instance,
              'max_buffer_size' => VAPI::Bindings::IntegerType.instance
            },
            SNMPLimits,
            false,
            nil
          )
        end
      end

      attr_accessor :max_communities,
                    :max_trap_destinations_v1,
                    :max_destinations_v3,
                    :max_notification_filters,
                    :max_community_length,
                    :max_buffer_size

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPTestResults``   class  Structure to provide operators diagnostics test results.
    # @!attribute [rw] success
    #     @return [Boolean]
    #     Set success to true/false
    # @!attribute [rw] message
    #     @return [String]
    #     message
    class SNMPTestResults < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_test_results',
            {
              'success' => VAPI::Bindings::BooleanType.instance,
              'message' => VAPI::Bindings::StringType.instance
            },
            SNMPTestResults,
            false,
            nil
          )
        end
      end

      attr_accessor :success,
                    :message

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPStats``   class  Structure to provide operators diagnostics on snmp agent itself.
    # @!attribute [rw] sysuptime
    #     @return [String]
    #     System uptime
    # @!attribute [rw] worstrtimelast
    #     @return [String]
    #     Last updated time
    # @!attribute [rw] avgresponsetime
    #     @return [String]
    #     Average response time
    # @!attribute [rw] worstresponsetime
    #     @return [String]
    #     Response time
    # @!attribute [rw] inpkts
    #     @return [Fixnum]
    #     No of input packets
    # @!attribute [rw] outpkts
    #     @return [Fixnum]
    #     No of output packets
    # @!attribute [rw] usmstatsnotintimewindows
    #     @return [Fixnum]
    #     No of stats not in time window
    # @!attribute [rw] usmstatsunknownusernames
    #     @return [Fixnum]
    #     No of usm stats unknown
    # @!attribute [rw] usmstatsunknownengineids
    #     @return [Fixnum]
    #     No of usm stats unknown engine ids
    # @!attribute [rw] usmstatswrongdigests
    #     @return [Fixnum]
    #     No of wrogn digests
    # @!attribute [rw] usmstatsdecryptionerrors
    #     @return [Fixnum]
    #     No. of decryption errors
    # @!attribute [rw] inbadversions
    #     @return [Fixnum]
    #     No of bad versions
    # @!attribute [rw] inbadcommunitynames
    #     @return [Fixnum]
    #     No of bad community names
    # @!attribute [rw] inbadcommunityuses
    #     @return [Fixnum]
    #     No of bad community uses
    # @!attribute [rw] inasnparseerrs
    #     @return [Fixnum]
    #     No of parse errors
    # @!attribute [rw] intoobigs
    #     @return [Fixnum]
    #     No of too bigs
    # @!attribute [rw] innosuchnames
    #     @return [Fixnum]
    #     No of no such names
    # @!attribute [rw] inbadvalues
    #     @return [Fixnum]
    #     No of bad values
    # @!attribute [rw] ingenerrs
    #     @return [Fixnum]
    #     No of gen errors
    # @!attribute [rw] outtoobigs
    #     @return [Fixnum]
    #     No out output too bigs
    # @!attribute [rw] outnosuchnames
    #     @return [Fixnum]
    #     No of no such names
    # @!attribute [rw] outbadvalues
    #     @return [Fixnum]
    #     No of bad values
    # @!attribute [rw] outgenerrs
    #     @return [Fixnum]
    #     No of gen errors
    # @!attribute [rw] outtraps
    #     @return [Fixnum]
    #     No of output traps
    # @!attribute [rw] silentdrops
    #     @return [Fixnum]
    #     No of silent drops
    # @!attribute [rw] avgvarbinds
    #     @return [Fixnum]
    #     No of ave:rage var binds
    # @!attribute [rw] maxvarbinds
    #     @return [Fixnum]
    #     No of max var binds
    class SNMPStats < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_stats',
            {
              'sysuptime' => VAPI::Bindings::StringType.instance,
              'worstrtimelast' => VAPI::Bindings::StringType.instance,
              'avgresponsetime' => VAPI::Bindings::StringType.instance,
              'worstresponsetime' => VAPI::Bindings::StringType.instance,
              'inpkts' => VAPI::Bindings::IntegerType.instance,
              'outpkts' => VAPI::Bindings::IntegerType.instance,
              'usmstatsnotintimewindows' => VAPI::Bindings::IntegerType.instance,
              'usmstatsunknownusernames' => VAPI::Bindings::IntegerType.instance,
              'usmstatsunknownengineids' => VAPI::Bindings::IntegerType.instance,
              'usmstatswrongdigests' => VAPI::Bindings::IntegerType.instance,
              'usmstatsdecryptionerrors' => VAPI::Bindings::IntegerType.instance,
              'inbadversions' => VAPI::Bindings::IntegerType.instance,
              'inbadcommunitynames' => VAPI::Bindings::IntegerType.instance,
              'inbadcommunityuses' => VAPI::Bindings::IntegerType.instance,
              'inasnparseerrs' => VAPI::Bindings::IntegerType.instance,
              'intoobigs' => VAPI::Bindings::IntegerType.instance,
              'innosuchnames' => VAPI::Bindings::IntegerType.instance,
              'inbadvalues' => VAPI::Bindings::IntegerType.instance,
              'ingenerrs' => VAPI::Bindings::IntegerType.instance,
              'outtoobigs' => VAPI::Bindings::IntegerType.instance,
              'outnosuchnames' => VAPI::Bindings::IntegerType.instance,
              'outbadvalues' => VAPI::Bindings::IntegerType.instance,
              'outgenerrs' => VAPI::Bindings::IntegerType.instance,
              'outtraps' => VAPI::Bindings::IntegerType.instance,
              'silentdrops' => VAPI::Bindings::IntegerType.instance,
              'avgvarbinds' => VAPI::Bindings::IntegerType.instance,
              'maxvarbinds' => VAPI::Bindings::IntegerType.instance
            },
            SNMPStats,
            false,
            nil
          )
        end
      end

      attr_accessor :sysuptime,
                    :worstrtimelast,
                    :avgresponsetime,
                    :worstresponsetime,
                    :inpkts,
                    :outpkts,
                    :usmstatsnotintimewindows,
                    :usmstatsunknownusernames,
                    :usmstatsunknownengineids,
                    :usmstatswrongdigests,
                    :usmstatsdecryptionerrors,
                    :inbadversions,
                    :inbadcommunitynames,
                    :inbadcommunityuses,
                    :inasnparseerrs,
                    :intoobigs,
                    :innosuchnames,
                    :inbadvalues,
                    :ingenerrs,
                    :outtoobigs,
                    :outnosuchnames,
                    :outbadvalues,
                    :outgenerrs,
                    :outtraps,
                    :silentdrops,
                    :avgvarbinds,
                    :maxvarbinds

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfig``   class  Structure that defines the SNMP configuration, provided as input to set(), and never the result of get(). See SNMPConfigReadOnly. This structure is used to configure SNMP v1, v2c, and v3.
    # @!attribute [rw] authentication
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     Set the default authentication protocol. Values can be none, MD5, or SHA1.
    # @!attribute [rw] communities
    #     @return [Array<String>]
    #     Set up to ten communities, each of no more than 64 characters long. The format is: community1[,community2,...]. This setting overwrites any previous settings.
    # @!attribute [rw] engineid
    #     @return [String]
    #     Set SNMPv3 engine ID. The engine ID must contain 5 to 32 hexadecimal characters. "0x" and colon (:) are removed from the ID.
    # @!attribute [rw] loglevel
    #     @return [String]
    #     System Agent syslog logging level: debug|info|warning|error.
    # @!attribute [rw] notraps
    #     @return [Array<String>]
    #     Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the agent. Use 'reset' to clear the setting.
    # @!attribute [rw] port
    #     @return [Fixnum]
    #     Set up a UDP port which the SNMP agent uses to listen on for polling requests. The default UDP port is 161.
    # @!attribute [rw] privacy
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
    #     Set the default privacy protocol. Values: none or AES128.
    # @!attribute [rw] remoteusers
    #     @return [Array<String>]
    #     Set up to five inform user IDs. The format is: user/auth-proto/-|auth-hash/priv-proto/-|priv-hash/engine-id[,...]. Here, user must be maximum 32 characters long; auth-proto is none, MD5 or SHA1; priv-proto is none or AES; '-' indicates no hash; engine-id is a hexadecimal string '0x0-9a-f' and must be up to 32 characters long.
    # @!attribute [rw] syscontact
    #     @return [String]
    #     System contact string as presented in sysContact.0. Up to 255 characters long.
    # @!attribute [rw] syslocation
    #     @return [String]
    #     System location string as presented in sysLocation.0. Up to 255 characters long.
    # @!attribute [rw] targets
    #     @return [Array<String>]
    #     Set up to three targets to which to send SNMPv1 traps. The format is: ip-or-hostname[\@port]/community[,...]. The default port is UDP 162. This setting overwrites any previous settings.
    # @!attribute [rw] users
    #     @return [Array<String>]
    #     Set up to five local users. The format is: user/-|auth-hash/-|priv-hash/model[,...]. Here user is maximum 32 characters long; '-' indicates no hash; model is one of none, auth or priv.
    # @!attribute [rw] v3targets
    #     @return [Array<String>]
    #     Set up to three SNMPv3 notification targets. Format is: ip-or-hostname[\@port]/remote-user/security-level/trap|inform[,...].
    class SNMPConfig < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_config',
            {
              'authentication' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto'),
              'communities' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'engineid' => VAPI::Bindings::StringType.instance,
              'loglevel' => VAPI::Bindings::StringType.instance,
              'notraps' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'port' => VAPI::Bindings::IntegerType.instance,
              'privacy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto'),
              'remoteusers' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'syscontact' => VAPI::Bindings::StringType.instance,
              'syslocation' => VAPI::Bindings::StringType.instance,
              'targets' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'users' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'v3targets' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance)
            },
            SNMPConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :authentication,
                    :communities,
                    :engineid,
                    :loglevel,
                    :notraps,
                    :port,
                    :privacy,
                    :remoteusers,
                    :syscontact,
                    :syslocation,
                    :targets,
                    :users,
                    :v3targets

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser``   class  Structure that defines information associated with an SNMP user. authKey and privKey are localized keys defined in http://tools.ietf.org/html/rfc3826#section-1.2.
    # @!attribute [rw] username
    #     @return [String]
    #     SNMP Username
    # @!attribute [rw] sec_level
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     SNMP security level
    # @!attribute [rw] auth_key
    #     @return [String]
    #     SNMP authorization key
    # @!attribute [rw] priv_key
    #     @return [String]
    #     SNMP privacy key
    class SNMPUser < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_user',
            {
              'username' => VAPI::Bindings::StringType.instance,
              'sec_level' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel'),
              'auth_key' => VAPI::Bindings::StringType.instance,
              'priv_key' => VAPI::Bindings::StringType.instance
            },
            SNMPUser,
            false,
            nil
          )
        end
      end

      attr_accessor :username,
                    :sec_level,
                    :auth_key,
                    :priv_key

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target``   class  Structure that defines an SNMP v3 inform or trap target.
    # @!attribute [rw] type
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication]
    #     SNMP target type
    # @!attribute [rw] sec_level
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     SNMP security level
    # @!attribute [rw] ip
    #     @return [String]
    #     SNMP target ip
    # @!attribute [rw] port
    #     @return [Fixnum]
    #     SNMP target port
    # @!attribute [rw] user
    #     @return [String]
    #     SNMP User
    class SNMPv3Target < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv3_target',
            {
              'type' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication'),
              'sec_level' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel'),
              'ip' => VAPI::Bindings::StringType.instance,
              'port' => VAPI::Bindings::IntegerType.instance,
              'user' => VAPI::Bindings::StringType.instance
            },
            SNMPv3Target,
            false,
            nil
          )
        end
      end

      attr_accessor :type,
                    :sec_level,
                    :ip,
                    :port,
                    :user

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget``   class  Structure that defines an SNMP v1/v2c trap target.
    # @!attribute [rw] ip
    #     @return [String]
    #     SNMP target ip
    # @!attribute [rw] port
    #     @return [Fixnum]
    #     SNMP target port
    # @!attribute [rw] community
    #     @return [String]
    #     SNMP target community
    class SNMPv1TrapTarget < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv1_trap_target',
            {
              'ip' => VAPI::Bindings::StringType.instance,
              'port' => VAPI::Bindings::IntegerType.instance,
              'community' => VAPI::Bindings::StringType.instance
            },
            SNMPv1TrapTarget,
            false,
            nil
          )
        end
      end

      attr_accessor :ip,
                    :port,
                    :community

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser``   class  Structure that defines a user at particular remote SNMPv3 entity needed when using informs. auth_key and priv_key contained localized keys as defined in http://tools.ietf.org/html/rfc3826#section-1.2.
    # @!attribute [rw] username
    #     @return [String]
    #     SNMP Username
    # @!attribute [rw] sec_level
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     SNMP security level
    # @!attribute [rw] authentication
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     SNMP authorization protocol
    # @!attribute [rw] auth_key
    #     @return [String]
    #     SNMP authorization key
    # @!attribute [rw] privacy
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
    #     SNMP privacy protocol
    # @!attribute [rw] priv_key
    #     @return [String]
    #     SNMP privacy key
    # @!attribute [rw] engineid
    #     @return [String]
    #     SNMP v3 engine id
    class SNMPRemoteUser < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_remote_user',
            {
              'username' => VAPI::Bindings::StringType.instance,
              'sec_level' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel'),
              'authentication' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto'),
              'auth_key' => VAPI::Bindings::StringType.instance,
              'privacy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto'),
              'priv_key' => VAPI::Bindings::StringType.instance,
              'engineid' => VAPI::Bindings::StringType.instance
            },
            SNMPRemoteUser,
            false,
            nil
          )
        end
      end

      attr_accessor :username,
                    :sec_level,
                    :authentication,
                    :auth_key,
                    :privacy,
                    :priv_key,
                    :engineid

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPConfigReadOnly``   class  Structure that defines the SNMP configuration, the result of get(), and never provided as input to set(). This structure differs from SNMPConfig because it contains localized keys (as defined in http://tools.ietf.org/html/rfc3826#section-1.2), instead of raw secret strings. This structure can be used to configure SNMP v1, v2c, and v3. Keep this structure in sync with vmw_snmp.py:_default_config(). Note that if a field if left empty, it is considered unset and will be ignored. Existing array elements below can be unset by sending an element with the string 'reset'.
    # @!attribute [rw] authentication
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     Set the default authentication protocol. Values can be none, MD5, or SHA1.
    # @!attribute [rw] communities
    #     @return [Array<String>]
    #     Set up to ten communities, each of no more than 64 characters long. The format is: community1[,community2,...]. This setting overwrites any previous settings.
    # @!attribute [rw] enable
    #     @return [Boolean]
    #     Set enable to true/false
    # @!attribute [rw] engineid
    #     @return [String]
    #     Set SNMPv3 engine ID.
    # @!attribute [rw] loglevel
    #     @return [String]
    #     System Agent syslog logging level: debug|info|warning|error.
    # @!attribute [rw] notraps
    #     @return [Array<String>]
    #     Comma-separated list of trap OIDs (object identifiers) for traps not to be sent by the agent. Use 'reset' to clear the setting.
    # @!attribute [rw] port
    #     @return [Fixnum]
    #     Set up a UDP port which the SNMP agent uses to listen on for polling requests. The default UDP port is 161.
    # @!attribute [rw] privacy
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
    #     Set the default privacy protocol.
    # @!attribute [rw] syscontact
    #     @return [String]
    #     System contact string as presented in sysContact.0. Up to 255 characters long.
    # @!attribute [rw] syslocation
    #     @return [String]
    #     System location string as presented in sysLocation.0. Up to 255 characters long.
    # @!attribute [rw] targets
    #     @return [Array<Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget>]
    #     Set up to three targets to which to send SNMPv1 traps.
    # @!attribute [rw] users
    #     @return [Array<Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser>]
    #     Set up to five local users.
    # @!attribute [rw] remoteusers
    #     @return [Array<Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser>]
    #     Set up remote users.
    # @!attribute [rw] v3targets
    #     @return [Array<Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target>]
    #     Set up to three SNMPv3 notification targets. Format is: ip-or-hostname[\@port]/remote-user/security-level/trap|inform[,...].
    # @!attribute [rw] pid
    #     @return [String]
    #     Set up pid
    class SNMPConfigReadOnly < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_config_read_only',
            {
              'authentication' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto'),
              'communities' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'enable' => VAPI::Bindings::BooleanType.instance,
              'engineid' => VAPI::Bindings::StringType.instance,
              'loglevel' => VAPI::Bindings::StringType.instance,
              'notraps' => VAPI::Bindings::ListType.new(VAPI::Bindings::StringType.instance),
              'port' => VAPI::Bindings::IntegerType.instance,
              'privacy' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto'),
              'syscontact' => VAPI::Bindings::StringType.instance,
              'syslocation' => VAPI::Bindings::StringType.instance,
              'targets' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv1TrapTarget')),
              'users' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPUser')),
              'remoteusers' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPRemoteUser')),
              'v3targets' => VAPI::Bindings::ListType.new(VAPI::Bindings::ReferenceType.new('Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Target')),
              'pid' => VAPI::Bindings::StringType.instance
            },
            SNMPConfigReadOnly,
            false,
            nil
          )
        end
      end

      attr_accessor :authentication,
                    :communities,
                    :enable,
                    :engineid,
                    :loglevel,
                    :notraps,
                    :port,
                    :privacy,
                    :syscontact,
                    :syslocation,
                    :targets,
                    :users,
                    :remoteusers,
                    :v3targets,
                    :pid

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashConfig``   class  Structure to provide up to two secrets to combine with the SNMPv3 engine ID and authentication or privacy protocol to form a localized hash. auth_hash is always required, priv_hash can be empty. By default arguments are paths on the local filesystem, raw_secret takes path to be the actual raw secret. First implementation was in ESXi: esxcli system snmp hash --help
    # @!attribute [rw] auth_hash
    #     @return [String]
    #     Provide filename to secret for authentication hash, use in set --users (required secret)
    # @!attribute [rw] priv_hash
    #     @return [String]
    #     Provide filename to secret for privacy hash, use in set --users (secret)
    # @!attribute [rw] raw_secret
    #     @return [Boolean]
    #     Make --auth_path and --priv_path flags read raw secret from command line instead of file.
    class SNMPHashConfig < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_hash_config',
            {
              'auth_hash' => VAPI::Bindings::StringType.instance,
              'priv_hash' => VAPI::Bindings::StringType.instance,
              'raw_secret' => VAPI::Bindings::BooleanType.instance
            },
            SNMPHashConfig,
            false,
            nil
          )
        end
      end

      attr_accessor :auth_hash,
                    :priv_hash,
                    :raw_secret

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPHashResults``   class  Structure to provide operators diagnostics test results.
    # @!attribute [rw] auth_key
    #     @return [String]
    #     SNMP authentication key
    # @!attribute [rw] priv_key
    #     @return [String]
    #     SNMP privacy key
    class SNMPHashResults < VAPI::Bindings::VapiStruct
      class << self
        # Holds (gets or creates) the binding type metadata for this structure type.
        # @scope class
        # @return [VAPI::Bindings::StructType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::StructType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_hash_results',
            {
              'auth_key' => VAPI::Bindings::StringType.instance,
              'priv_key' => VAPI::Bindings::StringType.instance
            },
            SNMPHashResults,
            false,
            nil
          )
        end
      end

      attr_accessor :auth_key,
                    :priv_key

      # Constructs a new instance.
      # @param ruby_values [Hash] a map of initial property values (optional)
      # @param struct_value [VAPI::Data::StructValue] a raw StructValue from the wire (optional)
      def initialize(ruby_values = nil, struct_value = nil)
        super(self.class.binding_type, ruby_values, struct_value)
      end
    end

    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto``   enumerated type  Defines SNMP authentication protocols
    # @!attribute [rw] none
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     NONE
    # @!attribute [rw] sh_a1
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     SHA1
    # @!attribute [rw] m_d5
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
    #     MD5
    class SNMPAuthProto < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_auth_proto',
            SNMPAuthProto
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [SNMPAuthProto] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          SNMPAuthProto.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] none
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
      #     NONE
      NONE = SNMPAuthProto.send(:new, 'NONE')

      # @!attribute [rw] sh_a1
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
      #     SHA1
      SH_A1 = SNMPAuthProto.send(:new, 'SH_A1')

      # @!attribute [rw] m_d5
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPAuthProto]
      #     MD5
      M_D5 = SNMPAuthProto.send(:new, 'M_D5')
    end
    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto``   enumerated type  Defines SNMP privacy protocols
    # @!attribute [rw] ae_s128
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
    #     AES128
    # @!attribute [rw] none
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
    #     NONE
    class SNMPPrivProto < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_priv_proto',
            SNMPPrivProto
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [SNMPPrivProto] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          SNMPPrivProto.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] ae_s128
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
      #     AES128
      AE_S128 = SNMPPrivProto.send(:new, 'AE_S128')

      # @!attribute [rw] none
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPPrivProto]
      #     NONE
      NONE = SNMPPrivProto.send(:new, 'NONE')
    end
    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel``   enumerated type  Defines SNMP decurity levels
    # @!attribute [rw] none
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     none
    # @!attribute [rw] auth
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     auth
    # @!attribute [rw] priv
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
    #     priv
    class SNMPSecLevel < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNMP_sec_level',
            SNMPSecLevel
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [SNMPSecLevel] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          SNMPSecLevel.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] none
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
      #     none
      NONE = SNMPSecLevel.send(:new, 'NONE')

      # @!attribute [rw] auth
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
      #     auth
      AUTH = SNMPSecLevel.send(:new, 'AUTH')

      # @!attribute [rw] priv
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPSecLevel]
      #     priv
      PRIV = SNMPSecLevel.send(:new, 'PRIV')
    end
    # ``Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication``   enumerated type  Defines SNMP v3 notification types
    # @!attribute [rw] inform
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication]
    #     inform
    # @!attribute [rw] trap
    #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication]
    #     trap
    class SNMPv3Notfication < VAPI::Bindings::VapiEnum
      class << self
        # Holds (gets or creates) the binding type metadata for this enumeration type.
        # @scope class
        # @return [VAPI::Bindings::EnumType] the binding type
        def binding_type
          @binding_type ||= VAPI::Bindings::EnumType.new(
            'com.vmware.appliance.techpreview.monitoring.snmp.SNM_pv3_notfication',
            SNMPv3Notfication
          )
        end

        # Converts from a string value (perhaps off the wire) to an instance
        # of this enum type.
        # @param value [String] the actual value of the enum instance
        # @return [SNMPv3Notfication] the instance found for the value, otherwise
        #         an unknown instance will be built for the value
        def from_string(value)
          const_get(value)
        rescue NameError
          SNMPv3Notfication.send(:new, 'UNKNOWN', value)
        end
      end

      # Constructs a new instance.
      # @param value [String] the actual value of the enum instance
      # @param unknown [String] the unknown value when value is 'UKNOWN'
      def initialize(value, unknown = nil)
        super(self.class.binding_type, value, unknown)
      end

      private_class_method :new

      # @!attribute [rw] inform
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication]
      #     inform
      INFORM = SNMPv3Notfication.send(:new, 'INFORM')

      # @!attribute [rw] trap
      #     @return [Com::Vmware::Appliance::Techpreview::Monitoring::Snmp::SNMPv3Notfication]
      #     trap
      TRAP = SNMPv3Notfication.send(:new, 'TRAP')
    end
  end
end
