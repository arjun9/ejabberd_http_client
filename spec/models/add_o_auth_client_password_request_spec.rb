=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EjabberdHttpClient::AddOAuthClientPasswordRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe EjabberdHttpClient::AddOAuthClientPasswordRequest do
  let(:instance) { EjabberdHttpClient::AddOAuthClientPasswordRequest.new }

  describe 'test an instance of AddOAuthClientPasswordRequest' do
    it 'should create an instance of AddOAuthClientPasswordRequest' do
      expect(instance).to be_instance_of(EjabberdHttpClient::AddOAuthClientPasswordRequest)
    end
  end
  describe 'test attribute "client_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "client_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "secret"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end