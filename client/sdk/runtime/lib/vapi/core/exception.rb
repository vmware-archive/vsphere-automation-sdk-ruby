#- Copyright 2014-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

module VAPI::Core

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
    #
    # @!attribute [r] messages
    #   @return [Array<VAPI::Util::Message>] Generator of error messages
    #   describing why the Exception was raised.
    class VapiException < Exception

        # Create and raise a VapiException from a list of messages
        #
        # @param messages [Array<VAPI::Util::Message>] List of messages
        # @return [Void]
        # @raise [VapiException] if msg list is not empty
        def self.raise_as_needed(messages)
            #TODO: accept specific type to construct/raise
            if messages
                exception = nil
                for msg in messages.reverse
                    exception = VapiException.new(msg, cause=exception)
                end
                raise exception unless exception.nil?
            end
        end

        # Constructs a new instance.
        #
        # @param message [VAPI::Util::Message] Description regarding why the Exception was raised
        # @param cause [Exception] Exception that led to this Exception (optional)
        def initialize(message, cause=nil)
            super(message)
            #self._message = message
            #self._cause = cause
        end

        # @return [Array<VAPI::Util::Message>]
        #     Generator of error messages describing why the Exception was raised.
        def messages
            e = self
            #TODO: port this concept to ruby
        end

        # This method is primarily for use in tests
        def __cmp__(other)
            unless other.is_a? VapiException
                raise TypeError.new("compare other parameter is not the expected type")
            end
            #return cmp(list(self.messages), list(other.messages))
        end

        def to_s
            result = super.to_s
            #TODO: build on message with the cause, when provided
            return result
        end

    end
end
