=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::PurgeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PurgeApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::PurgeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PurgeApi' do
    it 'should create an instance of PurgeApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::PurgeApi)
    end
  end

  # unit tests for abort_delete_old_mam_messages
  # Abort currently running delete old MAM messages operation.
  # @param abort_delete_old_mam_messages_request
  # @param [Hash] opts the optional parameters
  # @return [AbortDeleteOldMamMessages200Response]
  describe 'abort_delete_old_mam_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for abort_delete_old_messages
  # Abort currently running delete old offline messages operation.
  # @param abort_delete_old_mam_messages_request
  # @param [Hash] opts the optional parameters
  # @return [AbortDeleteOldMamMessages200Response]
  describe 'abort_delete_old_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_expired_messages
  # Delete expired offline messages from database.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_expired_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_expired_pubsub_items
  # Delete expired PubSub items.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_expired_pubsub_items test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_mam_messages
  # Delete MAM messages older than DAYS.
  # @param delete_old_mam_messages_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_old_mam_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_mam_messages_batch
  # Delete MAM messages older than DAYS in batches.
  # @param delete_old_mam_messages_batch_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_old_mam_messages_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_mam_messages_status
  # Status of delete old MAM messages operation.
  # @param delete_old_mam_messages_status_request
  # @param [Hash] opts the optional parameters
  # @return [AbortDeleteOldMamMessages200Response]
  describe 'delete_old_mam_messages_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_messages
  # Delete offline messages older than DAYS.
  # @param delete_old_messages_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_old_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_messages_batch
  # Delete offline messages older than DAYS.
  # @param delete_old_messages_batch_request
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_old_messages_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_messages_status
  # Status of delete old offline messages operation.
  # @param delete_old_mam_messages_status_request
  # @param [Hash] opts the optional parameters
  # @return [AbortDeleteOldMamMessages200Response]
  describe 'delete_old_messages_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_pubsub_items
  # Keep only NUMBER of PubSub items per node.
  # @param delete_old_pubsub_items_request
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'delete_old_pubsub_items test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_push_sessions
  # Remove push sessions older than DAYS.
  # @param delete_old_messages_request
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'delete_old_push_sessions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_old_users
  # Delete users that didn&#39;t log in last days, or that never logged.
  # @param delete_old_users_request
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_old_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
