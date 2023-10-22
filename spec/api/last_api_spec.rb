=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::LastApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LastApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::LastApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LastApi' do
    it 'should create an instance of LastApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::LastApi)
    end
  end

  # unit tests for get_last
  # Get last activity information.
  # @param get_last_request
  # @param [Hash] opts the optional parameters
  # @return [GetLast200Response]
  describe 'get_last test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for set_last
  # Set last activity information.
  # @param [Hash] opts the optional parameters
  # @option opts [SetLastRequest] :set_last_request
  # @return [Integer]
  describe 'set_last test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end