# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespaceManagementClustersSetSpec
    attr_accessor :default_image_registry

    # Default image repository to use when Kubernetes Pod container specification does not specify it as part of the container image name. If unset, default image repository will be set to Docker Hub official repository in case of Docker Hub image registry, otherwise will be set to empty string.
    attr_accessor :default_image_repository

    # Identifier of the Content Library which holds the VM Images for vSphere Kubernetes Service. This Content Library should be subscribed to VMware's hosted vSphere Kubernetes Service Repository. Modifying or clearing the Content Library identifier will not affect existing vSphere Kubernetes Service clusters. However, upgrades or scale-out of existing clusters may be affected if the new Content Library doesn't have the necessary VM Images. If unset, the Content Library identifier will be cleared. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: content.Library. When operations return a value of this structure as a result, the field will be an identifier for the resource type: content.Library.
    attr_accessor :default_kubernetes_service_content_library

    # Identifier of storage policy associated with ephemeral disks of all the Kubernetes Pods in the cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile.
    attr_accessor :ephemeral_storage_policy

    attr_accessor :image_storage

    # Disclaimer to be displayed prior to login via the Kubectl plugin. If unset, disclaimer to be displayed prior to login via the Kubectl plugin will be cleared.
    attr_accessor :login_banner

    # List of DNS server IP addresses to use on Kubernetes API server, specified in order of preference. If unset, DNS servers set on Kubernetes API server will be cleared.
    attr_accessor :master_dns

    # List of domains (for example \"vmware.com\") to be searched when trying to lookup a host name on Kubernetes API server, specified in order of preference. If unset, DNS search domains set on Kubernetes API server will be cleared.
    attr_accessor :master_dns_search_domains

    # List of NTP server DNS names or IP addresses to use on Kubernetes API server, specified in order of preference. If unset, VMware Tools based time synchronization is enabled and any set NTP servers are cleared.
    attr_accessor :master_ntp_servers

    # Identifier of storage policy associated with Kubernetes API server. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: SpsStorageProfile. When operations return a value of this structure as a result, the field will be an identifier for the resource type: SpsStorageProfile.
    attr_accessor :master_storage_policy

    attr_accessor :ncp_cluster_network_spec

    attr_accessor :network_provider

    attr_accessor :size_hint

    # List of DNS server IP addresses to use on the worker nodes, specified in order of preference. If unset, DNS servers set on worker nodes will be cleared.
    attr_accessor :worker_dns

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_image_registry' => :'default_image_registry',
        :'default_image_repository' => :'default_image_repository',
        :'default_kubernetes_service_content_library' => :'default_kubernetes_service_content_library',
        :'ephemeral_storage_policy' => :'ephemeral_storage_policy',
        :'image_storage' => :'image_storage',
        :'login_banner' => :'login_banner',
        :'master_dns' => :'master_DNS',
        :'master_dns_search_domains' => :'master_DNS_search_domains',
        :'master_ntp_servers' => :'master_NTP_servers',
        :'master_storage_policy' => :'master_storage_policy',
        :'ncp_cluster_network_spec' => :'ncp_cluster_network_spec',
        :'network_provider' => :'network_provider',
        :'size_hint' => :'size_hint',
        :'worker_dns' => :'worker_DNS'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'default_image_registry' => :'VcenterNamespaceManagementClustersImageRegistry',
        :'default_image_repository' => :'String',
        :'default_kubernetes_service_content_library' => :'String',
        :'ephemeral_storage_policy' => :'String',
        :'image_storage' => :'VcenterNamespaceManagementClustersImageStorageSpec',
        :'login_banner' => :'String',
        :'master_dns' => :'Array<String>',
        :'master_dns_search_domains' => :'Array<String>',
        :'master_ntp_servers' => :'Array<String>',
        :'master_storage_policy' => :'String',
        :'ncp_cluster_network_spec' => :'VcenterNamespaceManagementClustersNCPClusterNetworkSetSpec',
        :'network_provider' => :'VcenterNamespaceManagementClustersNetworkProvider',
        :'size_hint' => :'VcenterNamespaceManagementSizingHint',
        :'worker_dns' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'default_image_registry')
        self.default_image_registry = attributes[:'default_image_registry']
      end

      if attributes.has_key?(:'default_image_repository')
        self.default_image_repository = attributes[:'default_image_repository']
      end

      if attributes.has_key?(:'default_kubernetes_service_content_library')
        self.default_kubernetes_service_content_library = attributes[:'default_kubernetes_service_content_library']
      end

      if attributes.has_key?(:'ephemeral_storage_policy')
        self.ephemeral_storage_policy = attributes[:'ephemeral_storage_policy']
      end

      if attributes.has_key?(:'image_storage')
        self.image_storage = attributes[:'image_storage']
      end

      if attributes.has_key?(:'login_banner')
        self.login_banner = attributes[:'login_banner']
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

      if attributes.has_key?(:'master_NTP_servers')
        if (value = attributes[:'master_NTP_servers']).is_a?(Array)
          self.master_ntp_servers = value
        end
      end

      if attributes.has_key?(:'master_storage_policy')
        self.master_storage_policy = attributes[:'master_storage_policy']
      end

      if attributes.has_key?(:'ncp_cluster_network_spec')
        self.ncp_cluster_network_spec = attributes[:'ncp_cluster_network_spec']
      end

      if attributes.has_key?(:'network_provider')
        self.network_provider = attributes[:'network_provider']
      end

      if attributes.has_key?(:'size_hint')
        self.size_hint = attributes[:'size_hint']
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
      if @ephemeral_storage_policy.nil?
        invalid_properties.push('invalid value for "ephemeral_storage_policy", ephemeral_storage_policy cannot be nil.')
      end

      if @image_storage.nil?
        invalid_properties.push('invalid value for "image_storage", image_storage cannot be nil.')
      end

      if @master_storage_policy.nil?
        invalid_properties.push('invalid value for "master_storage_policy", master_storage_policy cannot be nil.')
      end

      if @network_provider.nil?
        invalid_properties.push('invalid value for "network_provider", network_provider cannot be nil.')
      end

      if @size_hint.nil?
        invalid_properties.push('invalid value for "size_hint", size_hint cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ephemeral_storage_policy.nil?
      return false if @image_storage.nil?
      return false if @master_storage_policy.nil?
      return false if @network_provider.nil?
      return false if @size_hint.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_image_registry == o.default_image_registry &&
          default_image_repository == o.default_image_repository &&
          default_kubernetes_service_content_library == o.default_kubernetes_service_content_library &&
          ephemeral_storage_policy == o.ephemeral_storage_policy &&
          image_storage == o.image_storage &&
          login_banner == o.login_banner &&
          master_dns == o.master_dns &&
          master_dns_search_domains == o.master_dns_search_domains &&
          master_ntp_servers == o.master_ntp_servers &&
          master_storage_policy == o.master_storage_policy &&
          ncp_cluster_network_spec == o.ncp_cluster_network_spec &&
          network_provider == o.network_provider &&
          size_hint == o.size_hint &&
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
      [default_image_registry, default_image_repository, default_kubernetes_service_content_library, ephemeral_storage_policy, image_storage, login_banner, master_dns, master_dns_search_domains, master_ntp_servers, master_storage_policy, ncp_cluster_network_spec, network_provider, size_hint, worker_dns].hash
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
