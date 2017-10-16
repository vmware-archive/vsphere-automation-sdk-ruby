#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Bindings

    # This exception is raised by various components of the vAPI runtime
    # infrastructure to indicate failures in that infrastructure.
    #
    # Server-side the exception is caught by specific components and an
    # internal_server_error is reported to the client that invoked the
    # request.  Client-side the exception may be raised for certain failures
    # before a request was sent to the server or after the response was
    # received from the server.  Similarly, server-side the exception may
    # be raised for failures that occur when a provider implementation
    # invokes the vAPI runtime.
    #
    # This exception is not part of the vAPI message protocol, and it must
    # never be raised by provider implementations.
    class BindingsException < VAPI::Core::VapiException

        # Constructs a new instance.
        # @param message [VAPI::Util::Message] Description regarding why the Exception was raised
        # @param cause [Exception] Exception that led to this Exception (optional)
        def initialize(message, cause=nil)
            super(message, cause)
        end
    end

    # VapiError which represents a VMODL2 error that was reported but could not
    # be resolved in the load path.
    class UnresolvedErrorType < BindingsException

        # Constructs a new instance.
        # @param message [VAPI::Util::Message] Description regarding why the Exception was raised
        def initialize(message)
            super(message)
        end
    end
end
