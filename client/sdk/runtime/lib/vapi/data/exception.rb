#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Data

    # This exception is raised by various components of the vAPI runtime
    # infrastructure to indicate failures in that infrastructure.
    class DataException < VAPI::Core::VapiException

        # Constructs a new instance.
        # @param message [VAPI::Util::Message] Description regarding why the Exception was raised
        # @param cause [Exception] Exception that led to this Exception (optional)
        def initialize(message, cause=nil)
            super(message, causae)
        end
    end
end
