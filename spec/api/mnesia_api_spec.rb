=begin
#OpenAPI Documentation for Ejabberd HTTP APIs

#APIs for managing Ejabberd server

The version of the OpenAPI document: 1.0.0


OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EjabberdHttpClient::MnesiaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MnesiaApi' do
  before do
    # run before each test
    @api_instance = EjabberdHttpClient::MnesiaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MnesiaApi' do
    it 'should create an instance of MnesiaApi' do
      expect(@api_instance).to be_instance_of(EjabberdHttpClient::MnesiaApi)
    end
  end

  # unit tests for backup
  # Backup the Mnesia database to a binary file.
  # @param backup_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'backup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for change_node_name
  # Change the erlang node name in a backup file.
  # @param change_node_name_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'change_node_name test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_mnesia
  # Delete elements in Mnesia database for a given vhost.
  # @param delete_mnesia_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_mnesia test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for dump
  # Dump the Mnesia database to a text file.
  # @param dump_request
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'dump test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for dump_table
  # Dump a Mnesia table to a text file.
  # @param dump_table_request
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'dump_table test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for export2sql
  # Export virtual host information from Mnesia tables to SQL file.
  # @param export2sql_request
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'export2sql test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for export_piefxis
  # Export data of all users in the server to PIEFXIS files (XEP-0227).
  # @param export_piefxis_request
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'export_piefxis test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for export_piefxis_host
  # Export data of users in a host to PIEFXIS files (XEP-0227).
  # @param export_piefxis_host_request
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'export_piefxis_host test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for global_mnesia_info
  # Dump info on global Mnesia state.
  # @param [Hash] opts the optional parameters
  # @return [ImportDir200Response]
  describe 'global_mnesia_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_dir
  # Import users data from jabberd14 spool dir.
  # @param import_dir_request
  # @param [Hash] opts the optional parameters
  # @return [ImportDir200Response]
  describe 'import_dir test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_file
  # Import user data from jabberd14 spool file.
  # @param import_file_request
  # @param [Hash] opts the optional parameters
  # @return [ImportDir200Response]
  describe 'import_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_piefxis
  # Import users data from a PIEFXIS file (XEP-0227).
  # @param import_piefxis_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'import_piefxis test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for import_prosody
  # Import data from Prosody.
  # @param import_prosody_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'import_prosody test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for install_fallback
  # Install Mnesia database from a binary backup file.
  # @param install_fallback_request
  # @param [Hash] opts the optional parameters
  # @return [ImportDir200Response]
  describe 'install_fallback test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for load_database
  # Restore Mnesia database from a text dump file.
  # @param load_database_request
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'load_database test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for restore
  # Restore the Mnesia database from a binary backup file.
  # @param [Hash] opts the optional parameters
  # @option opts [RestoreRequest] :restore_request
  # @return [String]
  describe 'restore test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for table_mnesia_info
  # Dump info on Mnesia table state.
  # @param table_mnesia_info_request
  # @param [Hash] opts the optional parameters
  # @return [ImportDir200Response]
  describe 'table_mnesia_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
