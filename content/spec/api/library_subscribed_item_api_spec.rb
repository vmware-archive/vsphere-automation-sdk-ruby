# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibrarySubscribedItemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibrarySubscribedItemApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibrarySubscribedItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibrarySubscribedItemApi' do
    it 'should create an instance of LibrarySubscribedItemApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibrarySubscribedItemApi)
    end
  end

  # unit tests for evict
  # Evicts the cached content of a library item in a subscribed library. &lt;p&gt; This {@term operation} allows the cached content of a library item to be removed to free up storage capacity. This {@term operation} will only work when a library item is synchronized on-demand. When a library is not synchronized on-demand, it always attempts to keep its cache up-to-date with the published source. Evicting the library item will set {@link ItemModel#cached} to false.
  # @param library_item_id Identifier of the library item whose content should be evicted.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'evict test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sync
  # Forces the synchronization of an individual library item in a subscribed library. &lt;p&gt; Synchronizing an individual item will update that item&#39;s metadata from the remote source. If the source library item on the remote library has been deleted, this {@term operation} will delete the library item from the subscribed library as well. &lt;p&gt; The default behavior of the synchronization is determined by the {@link SubscriptionInfo} of the library which owns the library item. &lt;ul&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is true, then the file content is not synchronized by default. In this case, only the library item metadata is synchronized. The file content may still be forcefully synchronized by passing true for the {@param.name forceSyncContent} {@term parameter}.&lt;/li&gt; &lt;li&gt;If {@link SubscriptionInfo#onDemand} is false, then this call will always synchronize the file content. The {@param.name forceSyncContent} {@term parameter} is ignored when the subscription is not on-demand.&lt;/li&gt; &lt;/ul&gt; When the file content has been synchronized, the {@link ItemModel#cached} {@term field} will be true. &lt;p&gt; This {@term operation} will return immediately and create an asynchronous task to perform the synchronization.
  # @param library_item_id Identifier of the library item to synchronize.
  # @param content_library_subscribed_item_sync 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'sync test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
