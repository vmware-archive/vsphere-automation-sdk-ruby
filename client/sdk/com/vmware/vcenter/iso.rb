#---------------------------------------------------------------------------
# Copyright 2017 VMware, Inc.  All rights reserved.
#
# AUTO GENERATED FILE -- DO NOT MODIFY!
#
# vAPI type descriptors for package com.vmware.vcenter.iso.
#---------------------------------------------------------------------------
require 'vapi'

# declare the module hierarchy before we use the shorthand syntax below
module Com
  module Vmware
    module Vcenter
      module Iso
      end
    end
  end
end

# The  ``com.vmware.vcenter.iso``   package  provides  classes  and  classs  that will let its client mount or unmount an ISO image on a virtual machine as a CD-ROM.
module Com::Vmware::Vcenter::Iso
  # Provides an interface to mount and unmount an ISO image on a virtual machine.  
  # 
  #  This is an API that will let its client mount or unmount an ISO image on a virtual machine as a CD-ROM. 
  class Image < VAPI::Bindings::VapiService
    # static metamodel definitions
    SERVICE_ID = VAPI::Core::ServiceIdentifier.new('com.vmware.vcenter.iso.image')

    MOUNT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('mount', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'library_item' => VAPI::Bindings::IdType.new('com.vmware.content.library.Item'),
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine')
      ),
      VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.Cdrom'),
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.invalid_argument' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::InvalidArgument'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState'),
        'com.vmware.vapi.std.errors.resource_inaccessible' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::ResourceInaccessible')
      },
      [],
      []
    )

    UNMOUNT_INFO = VAPI::Bindings::OperationInfo.new(
      VAPI::Core::OperationIdentifier.new('unmount', SERVICE_ID),
      VAPI::Bindings::OperationInputType.new(
        'vm' => VAPI::Bindings::IdType.new('VirtualMachine'),
        'cdrom' => VAPI::Bindings::IdType.new('com.vmware.vcenter.vm.hardware.Cdrom')
      ),
      VAPI::Bindings::VoidType.instance,
      {
        'com.vmware.vapi.std.errors.not_found' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotFound'),
        'com.vmware.vapi.std.errors.not_allowed_in_current_state' => VAPI::Bindings::ReferenceType.new('Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState')
      },
      [],
      []
    )

    SERVICE_INFO = VAPI::Bindings::ServiceInfo.new(
      SERVICE_ID,
      'mount' => MOUNT_INFO,
      'unmount' => UNMOUNT_INFO
    )

    # Constructs a new instance.
    #
    # @param config [VAPI::Bindings::StubConfig] A hash with the api provider details.
    def initialize(config)
      super(config, SERVICE_INFO)
    end

    # Mounts an ISO image from a content library on a virtual machine.
    #
    # @param library_item [String]
    #     The identifier of the library item having the ISO image to mount on the virtual machine.
    # @param vm [String]
    #     The identifier of the virtual machine where the specified ISO image will be mounted.
    # @return [String]
    #     The identifier of the newly created virtual CD-ROM backed by the specified ISO image.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If either  ``vm``  or the  ``library_item``  is not found.
    # @raise [Com::Vmware::Vapi::Std::Errors::InvalidArgument]
    #     If no .iso file is present on the library item.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     When the operation is not allowed on the virtual machine in its current state.
    def mount(library_item, vm)
      invoke_with_info(MOUNT_INFO,
                       'library_item' => library_item,
                       'vm' => vm)
    end

    # Unmounts a previously mounted CD-ROM using an ISO image as a backing.
    #
    # @param vm [String]
    #     The identifier of the virtual machine from which to unmount the virtual CD-ROM.
    # @param cdrom [String]
    #     The device identifier of the CD-ROM.
    # @return [Void]
    # @raise [Com::Vmware::Vapi::Std::Errors::NotFound]
    #     If the virtual machine identified by  ``vm``  is not found or the  ``cdrom``  does not identify a virtual CD-ROM in the virtual machine.
    # @raise [Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState]
    #     When the operation is not allowed on the virtual machine in its current state.
    def unmount(vm, cdrom)
      invoke_with_info(UNMOUNT_INFO,
                       'vm' => vm,
                       'cdrom' => cdrom)
    end

  end
end
