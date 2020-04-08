# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNamespaceManagementClustersNCPClusterNetworkEnableSpec
    # vSphere Distributed Switch used to connect this cluster. This field is required when configuring a cluster that uses NSX-T. If unset and using NSXe, the system will choose a suitable vSphere Distributed Switch. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: vSphereDistributedSwitch. When operations return a value of this structure as a result, the field will be an identifier for the resource type: vSphereDistributedSwitch.
    attr_accessor :cluster_distributed_switch

    # CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges should not overlap with those in Clusters.NCPClusterNetworkEnableSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkEnableSpec.ingress-cidrs, or other services running in the datacenter.
    attr_accessor :egress_cidrs

    # CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. These ranges should not overlap with those in Clusters.NCPClusterNetworkEnableSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkEnableSpec.egress-cidrs, or other services running in the datacenter.
    attr_accessor :ingress_cidrs

    # NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes Ingresses, and NSX SNAT. This field is required when configuring a cluster that uses NSX-T. If unset and using NSXe, the system will choose a suitable NSX Edge Cluster. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: NSXEdgeCluster. When operations return a value of this structure as a result, the field will be an identifier for the resource type: NSXEdgeCluster.
    attr_accessor :nsx_edge_cluster

    # CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not overlap with those in vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkEnableSpec.ingress-cidrs, Clusters.NCPClusterNetworkEnableSpec.egress-cidrs, or other services running in the datacenter. All Pod CIDR blocks must be of at least subnet size /23.
    attr_accessor :pod_cidrs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cluster_distributed_switch' => :'cluster_distributed_switch',
        :'egress_cidrs' => :'egress_cidrs',
        :'ingress_cidrs' => :'ingress_cidrs',
        :'nsx_edge_cluster' => :'nsx_edge_cluster',
        :'pod_cidrs' => :'pod_cidrs'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cluster_distributed_switch' => :'String',
        :'egress_cidrs' => :'Array<VcenterNamespaceManagementIpv4Cidr>',
        :'ingress_cidrs' => :'Array<VcenterNamespaceManagementIpv4Cidr>',
        :'nsx_edge_cluster' => :'String',
        :'pod_cidrs' => :'Array<VcenterNamespaceManagementIpv4Cidr>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cluster_distributed_switch')
        self.cluster_distributed_switch = attributes[:'cluster_distributed_switch']
      end

      if attributes.has_key?(:'egress_cidrs')
        if (value = attributes[:'egress_cidrs']).is_a?(Array)
          self.egress_cidrs = value
        end
      end

      if attributes.has_key?(:'ingress_cidrs')
        if (value = attributes[:'ingress_cidrs']).is_a?(Array)
          self.ingress_cidrs = value
        end
      end

      if attributes.has_key?(:'nsx_edge_cluster')
        self.nsx_edge_cluster = attributes[:'nsx_edge_cluster']
      end

      if attributes.has_key?(:'pod_cidrs')
        if (value = attributes[:'pod_cidrs']).is_a?(Array)
          self.pod_cidrs = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @egress_cidrs.nil?
        invalid_properties.push('invalid value for "egress_cidrs", egress_cidrs cannot be nil.')
      end

      if @ingress_cidrs.nil?
        invalid_properties.push('invalid value for "ingress_cidrs", ingress_cidrs cannot be nil.')
      end

      if @pod_cidrs.nil?
        invalid_properties.push('invalid value for "pod_cidrs", pod_cidrs cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @egress_cidrs.nil?
      return false if @ingress_cidrs.nil?
      return false if @pod_cidrs.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cluster_distributed_switch == o.cluster_distributed_switch &&
          egress_cidrs == o.egress_cidrs &&
          ingress_cidrs == o.ingress_cidrs &&
          nsx_edge_cluster == o.nsx_edge_cluster &&
          pod_cidrs == o.pod_cidrs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cluster_distributed_switch, egress_cidrs, ingress_cidrs, nsx_edge_cluster, pod_cidrs].hash
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
