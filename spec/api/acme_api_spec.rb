=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::AcmeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AcmeApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::AcmeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AcmeApi' do
    it 'should create an instance of AcmeApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::AcmeApi)
    end
  end

  # unit tests for list_certificates
  # Lists all ACME certificates.
  # @param [Hash] opts the optional parameters
  # @return [Array<ListCertificates200ResponseInner>]
  describe 'list_certificates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for request_certificate
  # Requests certificates for specified domains.
  # @param [Hash] opts the optional parameters
  # @option opts [RequestCertificateRequest] :request_certificate_request
  # @return [String]
  describe 'request_certificate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_certificate
  # Revokes the selected ACME certificate.
  # @param [Hash] opts the optional parameters
  # @option opts [RevokeCertificateRequest] :revoke_certificate_request
  # @return [String]
  describe 'revoke_certificate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
