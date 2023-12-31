=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::ClusterApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClusterApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::ClusterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClusterApi' do
    it 'should create an instance of ClusterApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::ClusterApi)
    end
  end

  # unit tests for join_cluster
  # Join this node into the cluster handled by Node.
  # @param join_cluster_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'join_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for leave_cluster
  # Remove and shutdown Node from the running cluster.
  # @param leave_cluster_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'leave_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cluster
  # List nodes that are part of the cluster handled by Node.
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'list_cluster test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for set_master
  # Set master node of the clustered Mnesia tables.
  # @param [Hash] opts the optional parameters
  # @option opts [SetMasterRequest] :set_master_request
  # @return [String]
  describe 'set_master test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
