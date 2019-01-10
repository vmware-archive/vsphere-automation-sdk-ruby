=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'uri'

module VSphereAutomation
  module VCenter
  class DeploymentQuestionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Supply answer to the raised question.
    # @param vcenter_deployment_question_answer 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsInternalServerErrorError|nil]
    def answer(vcenter_deployment_question_answer, opts = {})
      answer_with_http_info(vcenter_deployment_question_answer, opts)
      nil
    end

    # Supply answer to the raised question.
    # @api private
    # @param vcenter_deployment_question_answer 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsInternalServerErrorError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def answer_with_http_info(vcenter_deployment_question_answer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentQuestionApi.answer ...'
      end
      # verify the required parameter 'vcenter_deployment_question_answer' is set
      if @api_client.config.client_side_validation && vcenter_deployment_question_answer.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_deployment_question_answer' when calling DeploymentQuestionApi.answer"
      end
      # resource path
      local_var_path = '/vcenter/deployment/question?action=answer'

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
      post_body = @api_client.object_to_http_body(vcenter_deployment_question_answer)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentQuestionApi#answer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the question that was raised during the configuration.
    # @param [Hash] opts the optional parameters
    # @return [VcenterDeploymentQuestionResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsInternalServerErrorError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get the question that was raised during the configuration.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterDeploymentQuestionResult|VapiStdErrorsNotAllowedInCurrentStateError|VapiStdErrorsUnauthenticatedError|VapiStdErrorsInternalServerErrorError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeploymentQuestionApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/deployment/question'

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
	  '200' => 'VCenter::VcenterDeploymentQuestionResult',
	  '400' => 'VCenter::VapiStdErrorsNotAllowedInCurrentStateError',
	  '401' => 'VCenter::VapiStdErrorsUnauthenticatedError',
	  '500' => 'VCenter::VapiStdErrorsInternalServerErrorError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeploymentQuestionApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
