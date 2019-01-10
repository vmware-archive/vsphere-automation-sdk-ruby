=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemUpdatesessionWarningType
    
    SELF_SIGNED_CERTIFICATE = 'SELF_SIGNED_CERTIFICATE'.freeze
    EXPIRED_CERTIFICATE = 'EXPIRED_CERTIFICATE'.freeze
    NOT_YET_VALID_CERTIFICATE = 'NOT_YET_VALID_CERTIFICATE'.freeze
    UNTRUSTED_CERTIFICATE = 'UNTRUSTED_CERTIFICATE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContentLibraryItemUpdatesessionWarningType.constants.select { |c| ContentLibraryItemUpdatesessionWarningType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContentLibraryItemUpdatesessionWarningType" if constantValues.empty?
      value
    end
  end
  end
end
