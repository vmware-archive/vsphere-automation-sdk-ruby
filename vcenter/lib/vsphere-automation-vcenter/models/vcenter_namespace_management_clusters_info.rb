# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespaceManagementClustersInfo
    # Kubernetes API Server IP address via cluster network. This is the IP address of the Kubernetes LoadBalancer type service fronting the apiservers. This endpoint is the one configured in kubeconfig after login, and used for most human and application interaction with Kubernetes.
    attr_accessor :api_server_cluster_endpoint

    # Kubernetes API Server IP address on the management network. This is a floating IP and assigned to one of the control plane VMs on the management network. This endpoint is used by vSphere components.
    attr_accessor :api_server_management_endpoint

    # Identifier of the Kubernetes API servers. These are the IP addresses of the VM instances for the Kubernetes control plane on the management network.
    attr_accessor :api_servers

    attr_accessor :config_status

    # Identifier of the Content Library which holds the VM Images for vSphere Kubernetes Service. This Content Library should be subscribed to VMware's hosted vSphere Kubernetes Service Repository. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library.
    attr_accessor :default_kubernetes_service_content_library

    attr_accessor :kubernetes_status

    # Current set of messages associated with the object.
    attr_accessor :kubernetes_status_messages

    # List of DNS server IP addresses to use on Kubernetes API server, specified in order of preference.
    attr_accessor :master_dns

    # List of domains (for example \"vmware.com\") to be searched when trying to lookup a host name on Kubernetes API server, specified in order of preference.
    attr_accessor :master_dns_search_domains

    # Current set of messages associated with the object.
    attr_accessor :messages

    attr_accessor :ncp_cluster_network_info

    attr_accessor :network_provider

    attr_accessor :service_cidr

    attr_accessor :stat_summary

    # PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when accessed via the load balancer, e.g. devops user on corporate network. This certificate is only valid for use with the apiServerClusterEndpoint.
    attr_accessor :tls_endpoint_certificate

    # PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when accessed from the management network, e.g. from ESX servers or VCSA. This certificate is only valid for use with the apiServerManagementEndpoint.
    attr_accessor :tls_management_endpoint_certificate

    # List of DNS server IP addresses to use for pods that execute on the worker nodes (which are native pods on ESXi hosts in the vSphere Namespaces Supervisor).
    attr_accessor :worker_dns

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'api_server_cluster_endpoint' => :'api_server_cluster_endpoint',
        :'api_server_management_endpoint' => :'api_server_management_endpoint',
        :'api_servers' => :'api_servers',
        :'config_status' => :'config_status',
        :'default_kubernetes_service_content_library' => :'default_kubernetes_service_content_library',
        :'kubernetes_status' => :'kubernetes_status',
        :'kubernetes_status_messages' => :'kubernetes_status_messages',
        :'master_dns' => :'master_DNS',
        :'master_dns_search_domains' => :'master_DNS_search_domains',
        :'messages' => :'messages',
        :'ncp_cluster_network_info' => :'ncp_cluster_network_info',
        :'network_provider' => :'network_provider',
        :'service_cidr' => :'service_cidr',
        :'stat_summary' => :'stat_summary',
        :'tls_endpoint_certificate' => :'tls_endpoint_certificate',
        :'tls_management_endpoint_certificate' => :'tls_management_endpoint_certificate',
        :'worker_dns' => :'worker_DNS'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'api_server_cluster_endpoint' => :'String',
        :'api_server_management_endpoint' => :'String',
        :'api_servers' => :'Array<String>',
        :'config_status' => :'VcenterNamespaceManagementClustersConfigStatus',
        :'default_kubernetes_service_content_library' => :'String',
        :'kubernetes_status' => :'VcenterNamespaceManagementClustersKubernetesStatus',
        :'kubernetes_status_messages' => :'Array<VcenterNamespaceManagementClustersMessage>',
        :'master_dns' => :'Array<String>',
        :'master_dns_search_domains' => :'Array<String>',
        :'messages' => :'Array<VcenterNamespaceManagementClustersMessage>',
        :'ncp_cluster_network_info' => :'VcenterNamespaceManagementClustersNCPClusterNetworkInfo',
        :'network_provider' => :'VcenterNamespaceManagementClustersNetworkProvider',
        :'service_cidr' => :'VcenterNamespaceManagementIpv4Cidr',
        :'stat_summary' => :'VcenterNamespaceManagementClustersStats',
        :'tls_endpoint_certificate' => :'String',
        :'tls_management_endpoint_certificate' => :'String',
        :'worker_dns' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'api_server_cluster_endpoint')
        self.api_server_cluster_endpoint = attributes[:'api_server_cluster_endpoint']
      end

      if attributes.has_key?(:'api_server_management_endpoint')
        self.api_server_management_endpoint = attributes[:'api_server_management_endpoint']
      end

      if attributes.has_key?(:'api_servers')
        if (value = attributes[:'api_servers']).is_a?(Array)
          self.api_servers = value
        end
      end

      if attributes.has_key?(:'config_status')
        self.config_status = attributes[:'config_status']
      end

      if attributes.has_key?(:'default_kubernetes_service_content_library')
        self.default_kubernetes_service_content_library = attributes[:'default_kubernetes_service_content_library']
      end

      if attributes.has_key?(:'kubernetes_status')
        self.kubernetes_status = attributes[:'kubernetes_status']
      end

      if attributes.has_key?(:'kubernetes_status_messages')
        if (value = attributes[:'kubernetes_status_messages']).is_a?(Array)
          self.kubernetes_status_messages = value
        end
      end

      if attributes.has_key?(:'master_DNS')
        if (value = attributes[:'master_DNS']).is_a?(Array)
          self.master_dns = value
        end
      end

      if attributes.has_key?(:'master_DNS_search_domains')
        if (value = attributes[:'master_DNS_search_domains']).is_a?(Array)
          self.master_dns_search_domains = value
        end
      end

      if attributes.has_key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end

      if attributes.has_key?(:'ncp_cluster_network_info')
        self.ncp_cluster_network_info = attributes[:'ncp_cluster_network_info']
      end

      if attributes.has_key?(:'network_provider')
        self.network_provider = attributes[:'network_provider']
      end

      if attributes.has_key?(:'service_cidr')
        self.service_cidr = attributes[:'service_cidr']
      end

      if attributes.has_key?(:'stat_summary')
        self.stat_summary = attributes[:'stat_summary']
      end

      if attributes.has_key?(:'tls_endpoint_certificate')
        self.tls_endpoint_certificate = attributes[:'tls_endpoint_certificate']
      end

      if attributes.has_key?(:'tls_management_endpoint_certificate')
        self.tls_management_endpoint_certificate = attributes[:'tls_management_endpoint_certificate']
      end

      if attributes.has_key?(:'worker_DNS')
        if (value = attributes[:'worker_DNS']).is_a?(Array)
          self.worker_dns = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @api_server_cluster_endpoint.nil?
        invalid_properties.push('invalid value for "api_server_cluster_endpoint", api_server_cluster_endpoint cannot be nil.')
      end

      if @api_server_management_endpoint.nil?
        invalid_properties.push('invalid value for "api_server_management_endpoint", api_server_management_endpoint cannot be nil.')
      end

      if @api_servers.nil?
        invalid_properties.push('invalid value for "api_servers", api_servers cannot be nil.')
      end

      if @config_status.nil?
        invalid_properties.push('invalid value for "config_status", config_status cannot be nil.')
      end

      if @kubernetes_status.nil?
        invalid_properties.push('invalid value for "kubernetes_status", kubernetes_status cannot be nil.')
      end

      if @kubernetes_status_messages.nil?
        invalid_properties.push('invalid value for "kubernetes_status_messages", kubernetes_status_messages cannot be nil.')
      end

      if @messages.nil?
        invalid_properties.push('invalid value for "messages", messages cannot be nil.')
      end

      if @network_provider.nil?
        invalid_properties.push('invalid value for "network_provider", network_provider cannot be nil.')
      end

      if @service_cidr.nil?
        invalid_properties.push('invalid value for "service_cidr", service_cidr cannot be nil.')
      end

      if @stat_summary.nil?
        invalid_properties.push('invalid value for "stat_summary", stat_summary cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @api_server_cluster_endpoint.nil?
      return false if @api_server_management_endpoint.nil?
      return false if @api_servers.nil?
      return false if @config_status.nil?
      return false if @kubernetes_status.nil?
      return false if @kubernetes_status_messages.nil?
      return false if @messages.nil?
      return false if @network_provider.nil?
      return false if @service_cidr.nil?
      return false if @stat_summary.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_server_cluster_endpoint == o.api_server_cluster_endpoint &&
          api_server_management_endpoint == o.api_server_management_endpoint &&
          api_servers == o.api_servers &&
          config_status == o.config_status &&
          default_kubernetes_service_content_library == o.default_kubernetes_service_content_library &&
          kubernetes_status == o.kubernetes_status &&
          kubernetes_status_messages == o.kubernetes_status_messages &&
          master_dns == o.master_dns &&
          master_dns_search_domains == o.master_dns_search_domains &&
          messages == o.messages &&
          ncp_cluster_network_info == o.ncp_cluster_network_info &&
          network_provider == o.network_provider &&
          service_cidr == o.service_cidr &&
          stat_summary == o.stat_summary &&
          tls_endpoint_certificate == o.tls_endpoint_certificate &&
          tls_management_endpoint_certificate == o.tls_management_endpoint_certificate &&
          worker_dns == o.worker_dns
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [api_server_cluster_endpoint, api_server_management_endpoint, api_servers, config_status, default_kubernetes_service_content_library, kubernetes_status, kubernetes_status_messages, master_dns, master_dns_search_domains, messages, ncp_cluster_network_info, network_provider, service_cidr, stat_summary, tls_endpoint_certificate, tls_management_endpoint_certificate, worker_dns].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN, :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = VSphereAutomation::VCenter.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
  end
end
