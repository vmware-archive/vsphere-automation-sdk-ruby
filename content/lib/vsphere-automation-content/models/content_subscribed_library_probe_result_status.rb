=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentSubscribedLibraryProbeResultStatus
    
    SUCCESS = 'SUCCESS'.freeze
    INVALID_URL = 'INVALID_URL'.freeze
    TIMED_OUT = 'TIMED_OUT'.freeze
    HOST_NOT_FOUND = 'HOST_NOT_FOUND'.freeze
    RESOURCE_NOT_FOUND = 'RESOURCE_NOT_FOUND'.freeze
    INVALID_CREDENTIALS = 'INVALID_CREDENTIALS'.freeze
    CERTIFICATE_ERROR = 'CERTIFICATE_ERROR'.freeze
    UNKNOWN_ERROR = 'UNKNOWN_ERROR'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContentSubscribedLibraryProbeResultStatus.constants.select { |c| ContentSubscribedLibraryProbeResultStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContentSubscribedLibraryProbeResultStatus" if constantValues.empty?
      value
    end
  end
  end
end
