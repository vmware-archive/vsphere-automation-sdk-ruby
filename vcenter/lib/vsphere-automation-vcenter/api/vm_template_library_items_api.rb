=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class VmTemplateLibraryItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
    # @param vcenter_vm_template_library_items_create 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsCreateResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def create(vcenter_vm_template_library_items_create, opts = {})
      data, _status_code, _headers = create_with_http_info(vcenter_vm_template_library_items_create, opts)
      data
    end

    # Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
    # @api private
    # @param vcenter_vm_template_library_items_create 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsCreateResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(vcenter_vm_template_library_items_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.create ...'
      end
      # verify the required parameter 'vcenter_vm_template_library_items_create' is set
      if @api_client.config.client_side_validation && vcenter_vm_template_library_items_create.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_template_library_items_create' when calling VmTemplateLibraryItemsApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(vcenter_vm_template_library_items_create)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsCreateResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
    # @param template_library_item identifier of the content library item containing the source virtual machine template to be deployed.
    # @param vcenter_vm_template_library_items_deploy 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsDeployResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def deploy(template_library_item, vcenter_vm_template_library_items_deploy, opts = {})
      data, _status_code, _headers = deploy_with_http_info(template_library_item, vcenter_vm_template_library_items_deploy, opts)
      data
    end

    # Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
    # @api private
    # @param template_library_item identifier of the content library item containing the source virtual machine template to be deployed.
    # @param vcenter_vm_template_library_items_deploy 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsDeployResult|VapiStdErrorsUnableToAllocateResourceError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def deploy_with_http_info(template_library_item, vcenter_vm_template_library_items_deploy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.deploy ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsApi.deploy"
      end
      # verify the required parameter 'vcenter_vm_template_library_items_deploy' is set
      if @api_client.config.client_side_validation && vcenter_vm_template_library_items_deploy.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_template_library_items_deploy' when calling VmTemplateLibraryItemsApi.deploy"
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items/{template_library_item}?action=deploy'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(vcenter_vm_template_library_items_deploy)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsDeployResult',
	  '400' => 'VCenter::VapiStdErrorsUnableToAllocateResourceError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#deploy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
    # @param template_library_item identifier of the library item containing the virtual machine template.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|]
    def get(template_library_item, opts = {})
      data, _status_code, _headers = get_with_http_info(template_library_item, opts)
      data
    end

    # Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
    # @api private
    # @param template_library_item identifier of the library item containing the virtual machine template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsResult|VapiStdErrorsResourceInaccessibleError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsUnauthorizedError|VapiStdErrorsNotFoundError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.get ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items/{template_library_item}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VCenter::VcenterVmTemplateLibraryItemsResult',
	  '400' => 'VCenter::VapiStdErrorsResourceInaccessibleError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '403' => 'VCenter::VapiStdErrorsUnauthorizedError',
	  '404' => 'VCenter::VapiStdErrorsNotFoundError',
	  '503' => 'VCenter::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
