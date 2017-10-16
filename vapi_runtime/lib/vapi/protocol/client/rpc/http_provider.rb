#- Copyright 2013-2017 VMware, Inc.  All rights reserved.
#- SPDX-License-Identifier: MIT

require 'net/http'

module VAPI::Protocol

    class HttpProvider

        attr_accessor :uri, :http, :cookie

        def initialize(url, ssl_options = {})
            self.uri = URI.parse(url)
            self.http = Net::HTTP.new(uri.host, uri.port)
            self.cookie = ''
            #TODO: use this for a connection pool: http://rubydoc.info/gems/persistent_http/PersistentHTTP

            http.set_debug_output $stderr if ENV['DEBUG_HTTP']
            http.use_ssl = (uri.scheme == 'https')

            if ssl_options[:verify] == :none
              http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            else
              http.verify_mode = OpenSSL::SSL::VERIFY_PEER
            end

            http.ca_file = ssl_options[:ca_file] if ssl_options[:ca_file]

            VAPI.log.debug "uri: #{uri}"
        end

        # The method used to send request to the server
        def do_request(content_type, content)
            VAPI.log.debug "request: #{content}"

            request = Net::HTTP::Post.new(uri.path) #URI.encode(uri))
            request.add_field('Content-Type', content_type)
            request.add_field('Cookie', self.cookie)
            request.body = content
            #Investigate EOF error with http.request
            #response = http.request(request)
            response = http.start {|http| http.request request }
            #VAPI.log.debug "response status: #{response.status}"
            # cookie = response.getheader('Set-Cookie')
            # self.cookie = cookie if cookie

            VAPI.log.debug "response (#{response.code}, #{response.message}): #{response.body}"
            response.body
        end

    end

end
