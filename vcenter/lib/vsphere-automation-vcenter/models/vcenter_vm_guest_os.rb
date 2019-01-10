=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmGuestOS
    
    DOS = 'DOS'.freeze
    WIN_31 = 'WIN_31'.freeze
    WIN_95 = 'WIN_95'.freeze
    WIN_98 = 'WIN_98'.freeze
    WIN_ME = 'WIN_ME'.freeze
    WIN_NT = 'WIN_NT'.freeze
    WIN_2000_PRO = 'WIN_2000_PRO'.freeze
    WIN_2000_SERV = 'WIN_2000_SERV'.freeze
    WIN_2000_ADV_SERV = 'WIN_2000_ADV_SERV'.freeze
    WIN_XP_HOME = 'WIN_XP_HOME'.freeze
    WIN_XP_PRO = 'WIN_XP_PRO'.freeze
    WIN_XP_PRO_64 = 'WIN_XP_PRO_64'.freeze
    WIN_NET_WEB = 'WIN_NET_WEB'.freeze
    WIN_NET_STANDARD = 'WIN_NET_STANDARD'.freeze
    WIN_NET_ENTERPRISE = 'WIN_NET_ENTERPRISE'.freeze
    WIN_NET_DATACENTER = 'WIN_NET_DATACENTER'.freeze
    WIN_NET_BUSINESS = 'WIN_NET_BUSINESS'.freeze
    WIN_NET_STANDARD_64 = 'WIN_NET_STANDARD_64'.freeze
    WIN_NET_ENTERPRISE_64 = 'WIN_NET_ENTERPRISE_64'.freeze
    WIN_LONGHORN = 'WIN_LONGHORN'.freeze
    WIN_LONGHORN_64 = 'WIN_LONGHORN_64'.freeze
    WIN_NET_DATACENTER_64 = 'WIN_NET_DATACENTER_64'.freeze
    WIN_VISTA = 'WIN_VISTA'.freeze
    WIN_VISTA_64 = 'WIN_VISTA_64'.freeze
    WINDOWS_7 = 'WINDOWS_7'.freeze
    WINDOWS_7_64 = 'WINDOWS_7_64'.freeze
    WINDOWS_7_SERVER_64 = 'WINDOWS_7_SERVER_64'.freeze
    WINDOWS_8 = 'WINDOWS_8'.freeze
    WINDOWS_8_64 = 'WINDOWS_8_64'.freeze
    WINDOWS_8_SERVER_64 = 'WINDOWS_8_SERVER_64'.freeze
    WINDOWS_9 = 'WINDOWS_9'.freeze
    WINDOWS_9_64 = 'WINDOWS_9_64'.freeze
    WINDOWS_9_SERVER_64 = 'WINDOWS_9_SERVER_64'.freeze
    WINDOWS_HYPERV = 'WINDOWS_HYPERV'.freeze
    FREEBSD = 'FREEBSD'.freeze
    FREEBSD_64 = 'FREEBSD_64'.freeze
    FREEBSD_11 = 'FREEBSD_11'.freeze
    FREEBSD_12 = 'FREEBSD_12'.freeze
    FREEBSD_11_64 = 'FREEBSD_11_64'.freeze
    FREEBSD_12_64 = 'FREEBSD_12_64'.freeze
    REDHAT = 'REDHAT'.freeze
    RHEL_2 = 'RHEL_2'.freeze
    RHEL_3 = 'RHEL_3'.freeze
    RHEL_3_64 = 'RHEL_3_64'.freeze
    RHEL_4 = 'RHEL_4'.freeze
    RHEL_4_64 = 'RHEL_4_64'.freeze
    RHEL_5 = 'RHEL_5'.freeze
    RHEL_5_64 = 'RHEL_5_64'.freeze
    RHEL_6 = 'RHEL_6'.freeze
    RHEL_6_64 = 'RHEL_6_64'.freeze
    RHEL_7 = 'RHEL_7'.freeze
    RHEL_7_64 = 'RHEL_7_64'.freeze
    RHEL_8_64 = 'RHEL_8_64'.freeze
    CENTOS = 'CENTOS'.freeze
    CENTOS_64 = 'CENTOS_64'.freeze
    CENTOS_6 = 'CENTOS_6'.freeze
    CENTOS_6_64 = 'CENTOS_6_64'.freeze
    CENTOS_7 = 'CENTOS_7'.freeze
    CENTOS_7_64 = 'CENTOS_7_64'.freeze
    CENTOS_8_64 = 'CENTOS_8_64'.freeze
    ORACLE_LINUX = 'ORACLE_LINUX'.freeze
    ORACLE_LINUX_64 = 'ORACLE_LINUX_64'.freeze
    ORACLE_LINUX_6 = 'ORACLE_LINUX_6'.freeze
    ORACLE_LINUX_6_64 = 'ORACLE_LINUX_6_64'.freeze
    ORACLE_LINUX_7 = 'ORACLE_LINUX_7'.freeze
    ORACLE_LINUX_7_64 = 'ORACLE_LINUX_7_64'.freeze
    ORACLE_LINUX_8_64 = 'ORACLE_LINUX_8_64'.freeze
    SUSE = 'SUSE'.freeze
    SUSE_64 = 'SUSE_64'.freeze
    SLES = 'SLES'.freeze
    SLES_64 = 'SLES_64'.freeze
    SLES_10 = 'SLES_10'.freeze
    SLES_10_64 = 'SLES_10_64'.freeze
    SLES_11 = 'SLES_11'.freeze
    SLES_11_64 = 'SLES_11_64'.freeze
    SLES_12 = 'SLES_12'.freeze
    SLES_12_64 = 'SLES_12_64'.freeze
    SLES_15_64 = 'SLES_15_64'.freeze
    NLD_9 = 'NLD_9'.freeze
    OES = 'OES'.freeze
    SJDS = 'SJDS'.freeze
    MANDRAKE = 'MANDRAKE'.freeze
    MANDRIVA = 'MANDRIVA'.freeze
    MANDRIVA_64 = 'MANDRIVA_64'.freeze
    TURBO_LINUX = 'TURBO_LINUX'.freeze
    TURBO_LINUX_64 = 'TURBO_LINUX_64'.freeze
    UBUNTU = 'UBUNTU'.freeze
    UBUNTU_64 = 'UBUNTU_64'.freeze
    DEBIAN_4 = 'DEBIAN_4'.freeze
    DEBIAN_4_64 = 'DEBIAN_4_64'.freeze
    DEBIAN_5 = 'DEBIAN_5'.freeze
    DEBIAN_5_64 = 'DEBIAN_5_64'.freeze
    DEBIAN_6 = 'DEBIAN_6'.freeze
    DEBIAN_6_64 = 'DEBIAN_6_64'.freeze
    DEBIAN_7 = 'DEBIAN_7'.freeze
    DEBIAN_7_64 = 'DEBIAN_7_64'.freeze
    DEBIAN_8 = 'DEBIAN_8'.freeze
    DEBIAN_8_64 = 'DEBIAN_8_64'.freeze
    DEBIAN_9 = 'DEBIAN_9'.freeze
    DEBIAN_9_64 = 'DEBIAN_9_64'.freeze
    DEBIAN_10 = 'DEBIAN_10'.freeze
    DEBIAN_10_64 = 'DEBIAN_10_64'.freeze
    ASIANUX_3 = 'ASIANUX_3'.freeze
    ASIANUX_3_64 = 'ASIANUX_3_64'.freeze
    ASIANUX_4 = 'ASIANUX_4'.freeze
    ASIANUX_4_64 = 'ASIANUX_4_64'.freeze
    ASIANUX_5_64 = 'ASIANUX_5_64'.freeze
    ASIANUX_7_64 = 'ASIANUX_7_64'.freeze
    ASIANUX_8_64 = 'ASIANUX_8_64'.freeze
    OPENSUSE = 'OPENSUSE'.freeze
    OPENSUSE_64 = 'OPENSUSE_64'.freeze
    FEDORA = 'FEDORA'.freeze
    FEDORA_64 = 'FEDORA_64'.freeze
    COREOS_64 = 'COREOS_64'.freeze
    VMWARE_PHOTON_64 = 'VMWARE_PHOTON_64'.freeze
    OTHER_24_X_LINUX = 'OTHER_24X_LINUX'.freeze
    OTHER_24_X_LINUX_64 = 'OTHER_24X_LINUX_64'.freeze
    OTHER_26_X_LINUX = 'OTHER_26X_LINUX'.freeze
    OTHER_26_X_LINUX_64 = 'OTHER_26X_LINUX_64'.freeze
    OTHER_3_X_LINUX = 'OTHER_3X_LINUX'.freeze
    OTHER_3_X_LINUX_64 = 'OTHER_3X_LINUX_64'.freeze
    OTHER_4_X_LINUX = 'OTHER_4X_LINUX'.freeze
    OTHER_4_X_LINUX_64 = 'OTHER_4X_LINUX_64'.freeze
    OTHER_LINUX = 'OTHER_LINUX'.freeze
    GENERIC_LINUX = 'GENERIC_LINUX'.freeze
    OTHER_LINUX_64 = 'OTHER_LINUX_64'.freeze
    SOLARIS_6 = 'SOLARIS_6'.freeze
    SOLARIS_7 = 'SOLARIS_7'.freeze
    SOLARIS_8 = 'SOLARIS_8'.freeze
    SOLARIS_9 = 'SOLARIS_9'.freeze
    SOLARIS_10 = 'SOLARIS_10'.freeze
    SOLARIS_10_64 = 'SOLARIS_10_64'.freeze
    SOLARIS_11_64 = 'SOLARIS_11_64'.freeze
    OS2 = 'OS2'.freeze
    ECOMSTATION = 'ECOMSTATION'.freeze
    ECOMSTATION_2 = 'ECOMSTATION_2'.freeze
    NETWARE_4 = 'NETWARE_4'.freeze
    NETWARE_5 = 'NETWARE_5'.freeze
    NETWARE_6 = 'NETWARE_6'.freeze
    OPENSERVER_5 = 'OPENSERVER_5'.freeze
    OPENSERVER_6 = 'OPENSERVER_6'.freeze
    UNIXWARE_7 = 'UNIXWARE_7'.freeze
    DARWIN = 'DARWIN'.freeze
    DARWIN_64 = 'DARWIN_64'.freeze
    DARWIN_10 = 'DARWIN_10'.freeze
    DARWIN_10_64 = 'DARWIN_10_64'.freeze
    DARWIN_11 = 'DARWIN_11'.freeze
    DARWIN_11_64 = 'DARWIN_11_64'.freeze
    DARWIN_12_64 = 'DARWIN_12_64'.freeze
    DARWIN_13_64 = 'DARWIN_13_64'.freeze
    DARWIN_14_64 = 'DARWIN_14_64'.freeze
    DARWIN_15_64 = 'DARWIN_15_64'.freeze
    DARWIN_16_64 = 'DARWIN_16_64'.freeze
    DARWIN_17_64 = 'DARWIN_17_64'.freeze
    DARWIN_18_64 = 'DARWIN_18_64'.freeze
    VMKERNEL = 'VMKERNEL'.freeze
    VMKERNEL_5 = 'VMKERNEL_5'.freeze
    VMKERNEL_6 = 'VMKERNEL_6'.freeze
    VMKERNEL_65 = 'VMKERNEL_65'.freeze
    AMAZONLINUX2_64 = 'AMAZONLINUX2_64'.freeze
    OTHER = 'OTHER'.freeze
    OTHER_64 = 'OTHER_64'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmGuestOS.constants.select { |c| VcenterVmGuestOS::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmGuestOS" if constantValues.empty?
      value
    end
  end
  end
end
