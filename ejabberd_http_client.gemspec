# -*- encoding: utf-8 -*-

=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0

OpenAPI Generator version: 7.0.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "ejabberd_http_client/version"

Gem::Specification.new do |s|
  s.name        = "ejabberd_http_client"
  s.version     = EjabberdHttpClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors = ["Arjun Verma"]
  s.email = ["arjun.verma@hetu-labs.com"]
  s.homepage    = "https://rubygems.org/gems/ejabberd_http_client"
  s.summary     = "OpenAPI Documentation for Ejabberd HTTP APIs Ruby Gem"
  s.description = "APIs for managing Ejabberd server"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
