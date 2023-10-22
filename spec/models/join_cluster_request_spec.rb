=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for EjabberdHttpClient::JoinClusterRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe EjabberdHttpClient::JoinClusterRequest do
  let(:instance) { EjabberdHttpClient::JoinClusterRequest.new }

  describe 'test an instance of JoinClusterRequest' do
    it 'should create an instance of JoinClusterRequest' do
      expect(instance).to be_instance_of(EjabberdHttpClient::JoinClusterRequest)
    end
  end
  describe 'test attribute "node"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
