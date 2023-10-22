=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::ErlangApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ErlangApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::ErlangApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErlangApi' do
    it 'should create an instance of ErlangApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::ErlangApi)
    end
  end

  # unit tests for compile
  # Recompile and reload Erlang source code file.
  # @param compile_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'compile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cookie
  # Get the Erlang cookie of this node.
  # @param [Hash] opts the optional parameters
  # @return [GetCookie200Response]
  describe 'get_cookie test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for restart_module
  # Stop an ejabberd module, reload code, and start.
  # @param [Hash] opts the optional parameters
  # @option opts [RestartModuleRequest] :restart_module_request
  # @return [RestartModule200Response]
  describe 'restart_module test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end