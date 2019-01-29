# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibraryItemUpdateSessionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibraryItemUpdateSessionApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibraryItemUpdateSessionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibraryItemUpdateSessionApi' do
    it 'should create an instance of LibraryItemUpdateSessionApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibraryItemUpdateSessionApi)
    end
  end

  # unit tests for cancel
  # Cancels the update session and sets its state to {@link UpdateSessionModel.State#CANCELED}. This {@term operation} will free up any temporary resources currently associated with the session. &lt;p&gt; This {@term operation} is not allowed if the session has been already completed. &lt;p&gt; Cancelling an update session will cancel any in progress transfers (either uploaded by the client or pulled by the server). Any content that has been already received will be scheduled for deletion.
  # @param update_session_id Identifier of the update session that should be canceled.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for complete
  # Completes the update session. This indicates that the client has finished making all the changes required to the underlying library item. If the client is pushing the content to the server, the library item will be updated once this call returns. If the server is pulling the content, the call may return before the changes become visible. In that case, the client can track the session to know when the server is done. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state. &lt;p&gt; Depending on the type of the library item associated with this session, a type adapter may be invoked to verify the validity of the files uploaded. The user can explicitly validate the session before completing the session by using the {@link content.library.item.updatesession.File#validate} {@term operation}. &lt;p&gt; Modifications are not visible to other clients unless the session is completed and all necessary files have been received.
  # @param update_session_id Identifier of the update session that should be completed.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'complete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Creates a new update session. An update session is used to make modifications to a library item. Modifications are not visible to other clients unless the session is completed and all necessary files have been received. &lt;p&gt; Content Library Service allows only one single update session to be active for a specific library item.
  # @param content_library_item_update_session_create 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemUpdateSessionCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes an update session. This removes the session and all information associated with it. &lt;p&gt; Removing an update session leaves any current transfers for that session in an indeterminate state (there is no guarantee that the server will terminate the transfers, or that the transfers can be completed). However there will no longer be a means of inspecting the status of those uploads except by seeing the effect on the library item. &lt;p&gt; Update sessions for which there is no upload activity or which are complete will automatically be deleted after a period of time.
  # @param update_session_id Identifer of the update session to delete.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fail
  # Terminates the update session with a client specified error message. &lt;p&gt; This is useful in transmitting client side failures (for example, not being able to access a file) to the server side.
  # @param update_session_id Identifier of the update session to fail.
  # @param content_library_item_update_session_fail 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'fail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the update session with the specified identifier, including the most up-to-date status information for the session.
  # @param update_session_id Identifier of the update session to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemUpdateSessionResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keep_alive
  # Keeps an update session alive. &lt;p&gt; If there is no activity for an update session after a period of time, the update session will expire, then be deleted. The update session expiration timeout is configurable in the Content Library Service system configuration. The default is five minutes. Invoking this {@term operation} enables a client to specifically extend the lifetime of the update session.
  # @param update_session_id Identifier of the update session whose lifetime should be extended.
  # @param [Hash] opts the optional parameters
  # @option opts [ContentLibraryItemUpdateSessionKeepAlive] :content_library_item_update_session_keep_alive 
  # @return [nil]
  describe 'keep_alive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists the identifiers of the update session created by the calling user. Optionally may filter by library item.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :library_item_id Optional library item identifier on which to filter results.
  # @return [ContentLibraryItemUpdateSessionListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the properties of an update session. &lt;p&gt; This is an incremental update to the update session. Any {@term field} in the {@link UpdateSessionModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the property {@link UpdateSessionModel#warningBehavior} of the update session. This will not, for example, update the {@link UpdateSessionModel#libraryItemId} or {@link UpdateSessionModel#state} of an update session. &lt;p&gt; This {@term operation} requires the session to be in the {@link UpdateSessionModel.State#ACTIVE} state.
  # @param update_session_id Identifer of the update session that should be updated.
  # @param content_library_item_update_session_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
