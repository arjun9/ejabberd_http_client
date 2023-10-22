<div>
  <h1 style="display:inline; vertical-align: middle; margin-left: 10px;">Ejabberd HTTP Client</h1>
</div> <br>

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Downloads](https://img.shields.io/gem/dt/ejabberd_http_client.svg)](https://rubygems.org/gems/ejabberd_http_client)
![Tests](https://github.com/arjun9/ejabberd_http_client/actions/workflows/rspec.yml/badge.svg)

The **Ejabberd HTTP Client** gem is a powerful and flexible Ruby library that simplifies communication with Ejabberd XMPP servers via their HTTP API. Ejabberd is a widely used XMPP server for real-time messaging and collaboration, and this gem empowers developers to integrate Ejabberd seamlessly into their Ruby applications.

**Ejabberd Offical API Doc:**  https://docs.ejabberd.im/developer/ejabberd-api/

## Features
* **Simplified Interaction**: Easily send and receive XMPP messages, manage user accounts, and perform administrative tasks on your Ejabberd server through a clean and intuitive Ruby API.

* **HTTP API Integration**: Seamlessly connect to the Ejabberd server's HTTP API, allowing you to harness the full potential of XMPP communication within your Ruby application.

* **Customization**: Tailor your XMPP interactions by configuring various options, such as message types, presence status, and more, to suit your specific use cases.

* **Open Source**: This gem is open source and actively maintained, providing a reliable and up-to-date solution for integrating Ejabberd with your Ruby projects.

* **Comprehensive Documentation:** Benefit from detailed documentation and usage examples to quickly get started and make the most of the gem's capabilities.

## Installation

Add this to the Gemfile:

    gem 'ejabberd_http_client', '~> 1.0.0'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ejabberd_http_client'

api_instance = EjabberdHttpClient::AccountsApi.new
ban_account_request = EjabberdHttpClient::BanAccountRequest.new # BanAccountRequest |

begin
  #Ban an account by kicking sessions and setting a random password.
  api_instance.ban_account(ban_account_request)
rescue EjabberdHttpClient::ApiError => e
  puts "Exception when calling AccountsApi->ban_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EjabberdHttpClient::AccountsApi* | [**ban_account**](docs/AccountsApi.md#ban_account) | **POST** /api/ban_account | Ban an account by kicking sessions and setting a random password.
*EjabberdHttpClient::AccountsApi* | [**change_password**](docs/AccountsApi.md#change_password) | **POST** /api/change_password | Change the password of an account.
*EjabberdHttpClient::AccountsApi* | [**check_account**](docs/AccountsApi.md#check_account) | **POST** /api/check_account | Check if an account exists or not.
*EjabberdHttpClient::AccountsApi* | [**check_password**](docs/AccountsApi.md#check_password) | **POST** /api/check_password | Check if a password is correct for a given user and host.
*EjabberdHttpClient::AccountsApi* | [**check_password_hash**](docs/AccountsApi.md#check_password_hash) | **POST** /api/check_password_hash | Check if the password hash for a user is correct. Allows hash methods from the Erlang/OTP crypto application.
*EjabberdHttpClient::AccountsApi* | [**delete_old_users**](docs/AccountsApi.md#delete_old_users) | **POST** /api/delete_old_users | Delete users that didn't log in last days, or that never logged.
*EjabberdHttpClient::AccountsApi* | [**register**](docs/AccountsApi.md#register) | **POST** /api/register | Register a user.
*EjabberdHttpClient::AccountsApi* | [**registered_users**](docs/AccountsApi.md#registered_users) | **POST** /api/registered_users | List all registered users in HOST.
*EjabberdHttpClient::AccountsApi* | [**unban_ip**](docs/AccountsApi.md#unban_ip) | **POST** /api/unban_ip | Remove banned IP addresses from the fail2ban table.
*EjabberdHttpClient::AccountsApi* | [**unregister_user**](docs/AccountsApi.md#unregister_user) | **POST** /api/unregister | Unregister a user.
*EjabberdHttpClient::AcmeApi* | [**list_certificates**](docs/AcmeApi.md#list_certificates) | **POST** /api/list_certificates | Lists all ACME certificates.
*EjabberdHttpClient::AcmeApi* | [**request_certificate**](docs/AcmeApi.md#request_certificate) | **POST** /api/request_certificate | Requests certificates for specified domains.
*EjabberdHttpClient::AcmeApi* | [**revoke_certificate**](docs/AcmeApi.md#revoke_certificate) | **POST** /api/revoke_certificate | Revokes the selected ACME certificate.
*EjabberdHttpClient::ClusterApi* | [**join_cluster**](docs/ClusterApi.md#join_cluster) | **POST** /api/join_cluster | Join this node into the cluster handled by Node.
*EjabberdHttpClient::ClusterApi* | [**leave_cluster**](docs/ClusterApi.md#leave_cluster) | **POST** /api/leave_cluster | Remove and shutdown Node from the running cluster.
*EjabberdHttpClient::ClusterApi* | [**list_cluster**](docs/ClusterApi.md#list_cluster) | **POST** /api/list_cluster | List nodes that are part of the cluster handled by Node.
*EjabberdHttpClient::ClusterApi* | [**set_master**](docs/ClusterApi.md#set_master) | **POST** /api/set_master | Set master node of the clustered Mnesia tables.
*EjabberdHttpClient::ConfigApi* | [**convert_to_yaml**](docs/ConfigApi.md#convert_to_yaml) | **POST** /api/convert_to_yaml | Convert the input configuration file from Erlang to YAML format.
*EjabberdHttpClient::ConfigApi* | [**dump_config**](docs/ConfigApi.md#dump_config) | **POST** /api/dump_config | Dump configuration in YAML format as seen by ejabberd.
*EjabberdHttpClient::ConfigApi* | [**reload_config**](docs/ConfigApi.md#reload_config) | **POST** /api/reload_config | Reload config file in memory.
*EjabberdHttpClient::DocumentationApi* | [**gen_html_doc_for_commands**](docs/DocumentationApi.md#gen_html_doc_for_commands) | **POST** /api/gen_html_doc_for_commands | Generates html documentation for ejabberd_commands.
*EjabberdHttpClient::DocumentationApi* | [**gen_markdown_doc_for_commands**](docs/DocumentationApi.md#gen_markdown_doc_for_commands) | **POST** /api/gen_markdown_doc_for_commands | Generates markdown documentation for ejabberd_commands.
*EjabberdHttpClient::DocumentationApi* | [**gen_markdown_doc_for_tags**](docs/DocumentationApi.md#gen_markdown_doc_for_tags) | **POST** /api/gen_markdown_doc_for_tags | Generates markdown documentation for ejabberd_commands.
*EjabberdHttpClient::DocumentationApi* | [**generate_manpage**](docs/DocumentationApi.md#generate_manpage) | **POST** /api/man | Generate Unix manpage for current ejabberd version.
*EjabberdHttpClient::ErlangApi* | [**compile**](docs/ErlangApi.md#compile) | **POST** /api/compile | Recompile and reload Erlang source code file.
*EjabberdHttpClient::ErlangApi* | [**get_cookie**](docs/ErlangApi.md#get_cookie) | **POST** /api/get_cookie | Get the Erlang cookie of this node.
*EjabberdHttpClient::ErlangApi* | [**restart_module**](docs/ErlangApi.md#restart_module) | **POST** /api/restart_module | Stop an ejabberd module, reload code, and start.
*EjabberdHttpClient::LastApi* | [**get_last**](docs/LastApi.md#get_last) | **POST** /api/get_last | Get last activity information.
*EjabberdHttpClient::LastApi* | [**set_last**](docs/LastApi.md#set_last) | **POST** /api/set_last | Set last activity information.
*EjabberdHttpClient::LogsApi* | [**get_loglevel**](docs/LogsApi.md#get_loglevel) | **POST** /api/get_loglevel | Get the current log level.
*EjabberdHttpClient::LogsApi* | [**reopen_log**](docs/LogsApi.md#reopen_log) | **POST** /api/reopen_log | Reopen the log files after being renamed.
*EjabberdHttpClient::LogsApi* | [**rotate_log**](docs/LogsApi.md#rotate_log) | **POST** /api/rotate_log | Rotate the log files.
*EjabberdHttpClient::LogsApi* | [**set_loglevel**](docs/LogsApi.md#set_loglevel) | **POST** /api/set_loglevel | Set the loglevel.
*EjabberdHttpClient::MamApi* | [**remove_mam_for_user**](docs/MamApi.md#remove_mam_for_user) | **POST** /api/remove_mam_for_user | Remove mam archive for user.
*EjabberdHttpClient::MamApi* | [**remove_mam_for_user_with_peer**](docs/MamApi.md#remove_mam_for_user_with_peer) | **POST** /api/remove_mam_for_user_with_peer | Remove mam archive for user with peer.
*EjabberdHttpClient::MnesiaApi* | [**backup**](docs/MnesiaApi.md#backup) | **POST** /api/backup | Backup the Mnesia database to a binary file.
*EjabberdHttpClient::MnesiaApi* | [**change_node_name**](docs/MnesiaApi.md#change_node_name) | **POST** /api/mnesia_change_nodename | Change the erlang node name in a backup file.
*EjabberdHttpClient::MnesiaApi* | [**delete_mnesia**](docs/MnesiaApi.md#delete_mnesia) | **POST** /api/delete_mnesia | Delete elements in Mnesia database for a given vhost.
*EjabberdHttpClient::MnesiaApi* | [**dump**](docs/MnesiaApi.md#dump) | **POST** /api/dump | Dump the Mnesia database to a text file.
*EjabberdHttpClient::MnesiaApi* | [**dump_table**](docs/MnesiaApi.md#dump_table) | **POST** /api/dump_table | Dump a Mnesia table to a text file.
*EjabberdHttpClient::MnesiaApi* | [**export2sql**](docs/MnesiaApi.md#export2sql) | **POST** /api/export2sql | Export virtual host information from Mnesia tables to SQL file.
*EjabberdHttpClient::MnesiaApi* | [**export_piefxis**](docs/MnesiaApi.md#export_piefxis) | **POST** /api/export_piefxis | Export data of all users in the server to PIEFXIS files (XEP-0227).
*EjabberdHttpClient::MnesiaApi* | [**export_piefxis_host**](docs/MnesiaApi.md#export_piefxis_host) | **POST** /api/export_piefxis_host | Export data of users in a host to PIEFXIS files (XEP-0227).
*EjabberdHttpClient::MnesiaApi* | [**global_mnesia_info**](docs/MnesiaApi.md#global_mnesia_info) | **POST** /api/mnesia_info | Dump info on global Mnesia state.
*EjabberdHttpClient::MnesiaApi* | [**import_dir**](docs/MnesiaApi.md#import_dir) | **POST** /api/import_dir | Import users data from jabberd14 spool dir.
*EjabberdHttpClient::MnesiaApi* | [**import_file**](docs/MnesiaApi.md#import_file) | **POST** /api/import_file | Import user data from jabberd14 spool file.
*EjabberdHttpClient::MnesiaApi* | [**import_piefxis**](docs/MnesiaApi.md#import_piefxis) | **POST** /api/import_piefxis | Import users data from a PIEFXIS file (XEP-0227).
*EjabberdHttpClient::MnesiaApi* | [**import_prosody**](docs/MnesiaApi.md#import_prosody) | **POST** /api/import_prosody | Import data from Prosody.
*EjabberdHttpClient::MnesiaApi* | [**install_fallback**](docs/MnesiaApi.md#install_fallback) | **POST** /api/install_fallback | Install Mnesia database from a binary backup file.
*EjabberdHttpClient::MnesiaApi* | [**load_database**](docs/MnesiaApi.md#load_database) | **POST** /api/load | Restore Mnesia database from a text dump file.
*EjabberdHttpClient::MnesiaApi* | [**restore**](docs/MnesiaApi.md#restore) | **POST** /api/restore | Restore the Mnesia database from a binary backup file.
*EjabberdHttpClient::MnesiaApi* | [**table_mnesia_info**](docs/MnesiaApi.md#table_mnesia_info) | **POST** /api/mnesia_table_info | Dump info on Mnesia table state.
*EjabberdHttpClient::ModulesApi* | [**check_module**](docs/ModulesApi.md#check_module) | **POST** /api/module_check | Check the contributed module repository compliance.
*EjabberdHttpClient::ModulesApi* | [**install_module**](docs/ModulesApi.md#install_module) | **POST** /api/module_install | Compile, install and start an available contributed module.
*EjabberdHttpClient::ModulesApi* | [**list_available_modules**](docs/ModulesApi.md#list_available_modules) | **POST** /api/modules_available | List the contributed modules available to install.
*EjabberdHttpClient::ModulesApi* | [**list_installed_modules**](docs/ModulesApi.md#list_installed_modules) | **POST** /api/modules_installed | List the contributed modules already installed.
*EjabberdHttpClient::ModulesApi* | [**uninstall_module**](docs/ModulesApi.md#uninstall_module) | **POST** /api/module_uninstall | Uninstall a contributed module.
*EjabberdHttpClient::ModulesApi* | [**update_module_specs**](docs/ModulesApi.md#update_module_specs) | **POST** /api/modules_update_specs | Update the module source code from Git.
*EjabberdHttpClient::ModulesApi* | [**upgrade_module**](docs/ModulesApi.md#upgrade_module) | **POST** /api/module_upgrade | Upgrade the running code of an installed module.
*EjabberdHttpClient::MucApi* | [**create_rooms_file**](docs/MucApi.md#create_rooms_file) | **POST** /api/create_rooms_file | Create the rooms indicated in file.
*EjabberdHttpClient::MucApi* | [**get_user_rooms**](docs/MucApi.md#get_user_rooms) | **POST** /api/get_user_rooms | Get the list of rooms where this user is occupant.
*EjabberdHttpClient::MucApi* | [**get_user_subscriptions**](docs/MucApi.md#get_user_subscriptions) | **POST** /api/get_user_subscriptions | Get the list of rooms where this user is subscribed.
*EjabberdHttpClient::MucApi* | [**list_muc_online_rooms**](docs/MucApi.md#list_muc_online_rooms) | **POST** /api/muc_online_rooms | List existing rooms ('global' to get all vhosts).
*EjabberdHttpClient::MucApi* | [**list_muc_online_rooms_by_regex**](docs/MucApi.md#list_muc_online_rooms_by_regex) | **POST** /api/muc_online_rooms_by_regex | List existing rooms ('global' to get all vhosts) by regex.
*EjabberdHttpClient::MucApi* | [**register_muc_nick**](docs/MucApi.md#register_muc_nick) | **POST** /api/muc_register_nick | Register a nick to a User JID in a MUC service.
*EjabberdHttpClient::MucApi* | [**rooms_empty_destroy**](docs/MucApi.md#rooms_empty_destroy) | **POST** /api/rooms_empty_destroy | Destroy the rooms that have no messages in archive.
*EjabberdHttpClient::MucApi* | [**rooms_empty_list**](docs/MucApi.md#rooms_empty_list) | **POST** /api/rooms_empty_list | List the rooms that have no messages in archive.
*EjabberdHttpClient::MucApi* | [**rooms_unused_destroy**](docs/MucApi.md#rooms_unused_destroy) | **POST** /api/rooms_unused_destroy | Destroy the rooms that are unused for many days in the service.
*EjabberdHttpClient::MucApi* | [**rooms_unused_list**](docs/MucApi.md#rooms_unused_list) | **POST** /api/rooms_unused_list | List the rooms that are unused for many days in the service.
*EjabberdHttpClient::MucApi* | [**unregister_muc_nick**](docs/MucApi.md#unregister_muc_nick) | **POST** /api/muc_unregister_nick | Unregister the nick registered by that account in the MUC service.
*EjabberdHttpClient::MucRoomApi* | [**change_room_option**](docs/MucRoomApi.md#change_room_option) | **POST** /api/change_room_option | Change an option in a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**create_room**](docs/MucRoomApi.md#create_room) | **POST** /api/create_room | Create a MUC room using name@service in the given host.
*EjabberdHttpClient::MucRoomApi* | [**create_room_with_options**](docs/MucRoomApi.md#create_room_with_options) | **POST** /api/create_room_with_opts | Create a MUC room using name@service in the given host with specific options.
*EjabberdHttpClient::MucRoomApi* | [**get_room_affiliation**](docs/MucRoomApi.md#get_room_affiliation) | **POST** /api/get_room_affiliation | Get affiliation of a user in MUC room.
*EjabberdHttpClient::MucRoomApi* | [**get_room_affiliations**](docs/MucRoomApi.md#get_room_affiliations) | **POST** /api/get_room_affiliations | Get the list of affiliations of a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**get_room_history**](docs/MucRoomApi.md#get_room_history) | **POST** /api/get_room_history | Get history of messages stored inside MUC room state.
*EjabberdHttpClient::MucRoomApi* | [**get_room_occupants**](docs/MucRoomApi.md#get_room_occupants) | **POST** /api/get_room_occupants | Get the list of occupants of a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**get_room_occupants_number**](docs/MucRoomApi.md#get_room_occupants_number) | **POST** /api/get_room_occupants_number | Get the number of occupants of a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**get_room_options**](docs/MucRoomApi.md#get_room_options) | **POST** /api/get_room_options | Get options from a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**get_subscribers**](docs/MucRoomApi.md#get_subscribers) | **POST** /api/get_subscribers | List subscribers of a MUC conference.
*EjabberdHttpClient::MucRoomApi* | [**send_direct_invitation**](docs/MucRoomApi.md#send_direct_invitation) | **POST** /api/send_direct_invitation | Send a direct invitation to several destinations.
*EjabberdHttpClient::MucRoomApi* | [**set_room_affiliation**](docs/MucRoomApi.md#set_room_affiliation) | **POST** /api/set_room_affiliation | Change an affiliation in a MUC room.
*EjabberdHttpClient::MucRoomApi* | [**subscribe_to_room**](docs/MucRoomApi.md#subscribe_to_room) | **POST** /api/subscribe_room | Subscribe to a MUC conference.
*EjabberdHttpClient::MucRoomApi* | [**subscribe_to_room_many**](docs/MucRoomApi.md#subscribe_to_room_many) | **POST** /api/subscribe_room_many | Subscribe several users to a MUC conference.
*EjabberdHttpClient::MucRoomApi* | [**unsubscribe_from_room**](docs/MucRoomApi.md#unsubscribe_from_room) | **POST** /api/unsubscribe_room | Unsubscribe from a MUC conference.
*EjabberdHttpClient::OauthApi* | [**add_o_auth_client_implicit**](docs/OauthApi.md#add_o_auth_client_implicit) | **POST** /api/oauth_add_client_implicit | Add OAUTH client_id with implicit grant type.
*EjabberdHttpClient::OauthApi* | [**add_o_auth_client_password**](docs/OauthApi.md#add_o_auth_client_password) | **POST** /api/oauth_add_client_password | Add OAUTH client_id with password grant type.
*EjabberdHttpClient::OauthApi* | [**issue_o_auth_token**](docs/OauthApi.md#issue_o_auth_token) | **POST** /api/oauth_issue_token | Issue an oauth token for the given jid.
*EjabberdHttpClient::OauthApi* | [**list_o_auth_tokens**](docs/OauthApi.md#list_o_auth_tokens) | **POST** /api/oauth_list_tokens | List OAuth tokens, their users and scopes, and their time until expiration.
*EjabberdHttpClient::OauthApi* | [**remove_o_auth_client**](docs/OauthApi.md#remove_o_auth_client) | **POST** /api/oauth_remove_client | Remove an OAuth client_id.
*EjabberdHttpClient::OauthApi* | [**revoke_o_auth_token**](docs/OauthApi.md#revoke_o_auth_token) | **POST** /api/oauth_revoke_token | Revoke an existing OAuth token.
*EjabberdHttpClient::OfflineApi* | [**get_offline_count**](docs/OfflineApi.md#get_offline_count) | **POST** /api/get_offline_count | Get the number of unread offline messages.
*EjabberdHttpClient::PrivateApi* | [**bookmarks_to_pep**](docs/PrivateApi.md#bookmarks_to_pep) | **POST** /api/bookmarks_to_pep | Export private XML storage bookmarks to PEP.
*EjabberdHttpClient::PrivateApi* | [**private_get**](docs/PrivateApi.md#private_get) | **POST** /api/private_get | Get some information from a user private storage.
*EjabberdHttpClient::PrivateApi* | [**private_set**](docs/PrivateApi.md#private_set) | **POST** /api/private_set | Set to the user private storage.
*EjabberdHttpClient::PurgeApi* | [**abort_delete_old_mam_messages**](docs/PurgeApi.md#abort_delete_old_mam_messages) | **POST** /api/abort_delete_old_mam_messages | Abort currently running delete old MAM messages operation.
*EjabberdHttpClient::PurgeApi* | [**abort_delete_old_messages**](docs/PurgeApi.md#abort_delete_old_messages) | **POST** /api/abort_delete_old_messages | Abort currently running delete old offline messages operation.
*EjabberdHttpClient::PurgeApi* | [**delete_expired_messages**](docs/PurgeApi.md#delete_expired_messages) | **POST** /api/delete_expired_messages | Delete expired offline messages from database.
*EjabberdHttpClient::PurgeApi* | [**delete_expired_pubsub_items**](docs/PurgeApi.md#delete_expired_pubsub_items) | **POST** /api/delete_expired_pubsub_items | Delete expired PubSub items.
*EjabberdHttpClient::PurgeApi* | [**delete_old_mam_messages**](docs/PurgeApi.md#delete_old_mam_messages) | **POST** /api/delete_old_mam_messages | Delete MAM messages older than DAYS.
*EjabberdHttpClient::PurgeApi* | [**delete_old_mam_messages_batch**](docs/PurgeApi.md#delete_old_mam_messages_batch) | **POST** /api/delete_old_mam_messages_batch | Delete MAM messages older than DAYS in batches.
*EjabberdHttpClient::PurgeApi* | [**delete_old_mam_messages_status**](docs/PurgeApi.md#delete_old_mam_messages_status) | **POST** /api/delete_old_mam_messages_status | Status of delete old MAM messages operation.
*EjabberdHttpClient::PurgeApi* | [**delete_old_messages**](docs/PurgeApi.md#delete_old_messages) | **POST** /api/delete_old_messages | Delete offline messages older than DAYS.
*EjabberdHttpClient::PurgeApi* | [**delete_old_messages_batch**](docs/PurgeApi.md#delete_old_messages_batch) | **POST** /api/delete_old_messages_batch | Delete offline messages older than DAYS.
*EjabberdHttpClient::PurgeApi* | [**delete_old_messages_status**](docs/PurgeApi.md#delete_old_messages_status) | **POST** /api/delete_old_messages_status | Status of delete old offline messages operation.
*EjabberdHttpClient::PurgeApi* | [**delete_old_pubsub_items**](docs/PurgeApi.md#delete_old_pubsub_items) | **POST** /api/delete_old_pubsub_items | Keep only NUMBER of PubSub items per node.
*EjabberdHttpClient::PurgeApi* | [**delete_old_push_sessions**](docs/PurgeApi.md#delete_old_push_sessions) | **POST** /api/delete_old_push_sessions | Remove push sessions older than DAYS.
*EjabberdHttpClient::PurgeApi* | [**delete_old_users**](docs/PurgeApi.md#delete_old_users) | **POST** /api/delete_old_users | Delete users that didn't log in last days, or that never logged.
*EjabberdHttpClient::RosterApi* | [**add_roster_item**](docs/RosterApi.md#add_roster_item) | **POST** /api/add_rosteritem | Add an item to a user's roster (supports ODBC). Groups can be multiple, separated by ; (e.g., g1;g2;g3).
*EjabberdHttpClient::RosterApi* | [**get_roster**](docs/RosterApi.md#get_roster) | **POST** /api/get_roster | Get list of contacts in a local user roster.
*EjabberdHttpClient::RosterApi* | [**process_roster_items**](docs/RosterApi.md#process_roster_items) | **POST** /api/process_rosteritems | List/delete rosteritems that match filter.
*EjabberdHttpClient::RosterApi* | [**push_all_to_all**](docs/RosterApi.md#push_all_to_all) | **POST** /api/push_alltoall | Add all the users to all the users of Host in Group.
*EjabberdHttpClient::RosterApi* | [**push_roster**](docs/RosterApi.md#push_roster) | **POST** /api/push_roster | Push template roster from file to a user.
*EjabberdHttpClient::RosterApi* | [**push_roster_all**](docs/RosterApi.md#push_roster_all) | **POST** /api/push_roster_all | Push template roster from file to all those users.
*EjabberdHttpClient::S2sApi* | [**get_outgoing_s2s_number**](docs/S2sApi.md#get_outgoing_s2s_number) | **POST** /api/outgoing_s2s_number | Number of outgoing s2s connections on the node.
*EjabberdHttpClient::S2sApi* | [**incoming_s2s_number**](docs/S2sApi.md#incoming_s2s_number) | **POST** /api/incoming_s2s_number | Number of incoming s2s connections on the node.
*EjabberdHttpClient::S2sApi* | [**stop_s2s_connections**](docs/S2sApi.md#stop_s2s_connections) | **POST** /api/stop_s2s_connections | Stop all s2s outgoing and incoming connections.
*EjabberdHttpClient::ServerApi* | [**clear_cache**](docs/ServerApi.md#clear_cache) | **POST** /api/clear_cache | Clear database cache on all nodes.
*EjabberdHttpClient::ServerApi* | [**gc**](docs/ServerApi.md#gc) | **POST** /api/gc | Force full garbage collection.
*EjabberdHttpClient::ServerApi* | [**get_status**](docs/ServerApi.md#get_status) | **POST** /api/status | Get status of the ejabberd server.
*EjabberdHttpClient::ServerApi* | [**halt**](docs/ServerApi.md#halt) | **POST** /api/halt | Halt ejabberd abruptly with status code 1.
*EjabberdHttpClient::ServerApi* | [**registered_vhosts**](docs/ServerApi.md#registered_vhosts) | **POST** /api/registered_vhosts | List all registered vhosts in SERVER.
*EjabberdHttpClient::ServerApi* | [**restart**](docs/ServerApi.md#restart) | **POST** /api/restart | Restart ejabberd gracefully.
*EjabberdHttpClient::ServerApi* | [**stop_ejabberd**](docs/ServerApi.md#stop_ejabberd) | **POST** /api/stop | Stop Ejabberd gracefully.
*EjabberdHttpClient::ServerApi* | [**stop_kindly**](docs/ServerApi.md#stop_kindly) | **POST** /api/stop_kindly | Inform users and rooms, wait, and stop the server.
*EjabberdHttpClient::ServerApi* | [**update_list**](docs/ServerApi.md#update_list) | **POST** /api/update_list | List modified modules that can be updated.
*EjabberdHttpClient::ServerApi* | [**update_module**](docs/ServerApi.md#update_module) | **POST** /api/update | Update the given module or use the keyword 'all'.
*EjabberdHttpClient::SessionApi* | [**connected_users**](docs/SessionApi.md#connected_users) | **POST** /api/connected_users | List all established user sessions.
*EjabberdHttpClient::SessionApi* | [**connected_users_info**](docs/SessionApi.md#connected_users_info) | **POST** /api/connected_users_info | List all established sessions and their information.
*EjabberdHttpClient::SessionApi* | [**connected_users_number**](docs/SessionApi.md#connected_users_number) | **POST** /api/connected_users_number | Get the number of established sessions.
*EjabberdHttpClient::SessionApi* | [**connected_users_v_host**](docs/SessionApi.md#connected_users_v_host) | **POST** /api/connected_users_vhost | Get the list of established sessions in a vhost.
*EjabberdHttpClient::SessionApi* | [**get_num_resources**](docs/SessionApi.md#get_num_resources) | **POST** /api/num_resources | Get the number of resources of a user.
*EjabberdHttpClient::SessionApi* | [**get_presence**](docs/SessionApi.md#get_presence) | **POST** /api/get_presence | Retrieve the resource with highest priority, and its presence for a given user.
*EjabberdHttpClient::SessionApi* | [**get_status_list**](docs/SessionApi.md#get_status_list) | **POST** /api/status_list | List of logged users with this status.
*EjabberdHttpClient::SessionApi* | [**get_status_list_host**](docs/SessionApi.md#get_status_list_host) | **POST** /api/status_list_host | List of users logged in host with their statuses.
*EjabberdHttpClient::SessionApi* | [**get_status_num**](docs/SessionApi.md#get_status_num) | **POST** /api/status_num | Number of logged users with a specific status.
*EjabberdHttpClient::SessionApi* | [**get_status_num_host**](docs/SessionApi.md#get_status_num_host) | **POST** /api/status_num_host | Number of logged users with a specific status in a host.
*EjabberdHttpClient::SessionApi* | [**get_user_sessions_info**](docs/SessionApi.md#get_user_sessions_info) | **POST** /api/user_sessions_info | Get information about all sessions of a user.
*EjabberdHttpClient::SessionApi* | [**kick_session**](docs/SessionApi.md#kick_session) | **POST** /api/kick_session | Kick a user session.
*EjabberdHttpClient::SessionApi* | [**kick_user**](docs/SessionApi.md#kick_user) | **POST** /api/kick_user | Disconnect user's active sessions.
*EjabberdHttpClient::SessionApi* | [**list_user_resources**](docs/SessionApi.md#list_user_resources) | **POST** /api/user_resources | List a user's connected resources.
*EjabberdHttpClient::SessionApi* | [**resource_num**](docs/SessionApi.md#resource_num) | **POST** /api/resource_num | Resource string of a session number.
*EjabberdHttpClient::SessionApi* | [**set_presence**](docs/SessionApi.md#set_presence) | **POST** /api/set_presence | Set presence of a session.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_create**](docs/SharedRosterGroupApi.md#srg_create) | **POST** /api/srg_create | Create a Shared Roster Group.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_delete**](docs/SharedRosterGroupApi.md#srg_delete) | **POST** /api/srg_delete | Delete a Shared Roster Group.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_get_info**](docs/SharedRosterGroupApi.md#srg_get_info) | **POST** /api/srg_get_info | Get info of a Shared Roster Group.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_get_members**](docs/SharedRosterGroupApi.md#srg_get_members) | **POST** /api/srg_get_members | Get members of a Shared Roster Group.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_list**](docs/SharedRosterGroupApi.md#srg_list) | **POST** /api/srg_list | List the Shared Roster Groups in a host.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_user_add**](docs/SharedRosterGroupApi.md#srg_user_add) | **POST** /api/srg_user_add | Add the JID user@host to a Shared Roster Group.
*EjabberdHttpClient::SharedRosterGroupApi* | [**srg_user_del**](docs/SharedRosterGroupApi.md#srg_user_del) | **POST** /api/srg_user_del | Delete the JID user@host from a Shared Roster Group.
*EjabberdHttpClient::SqlApi* | [**convert_to_scram**](docs/SqlApi.md#convert_to_scram) | **POST** /api/convert_to_scram | Convert the passwords of users to SCRAM for a given vhost.
*EjabberdHttpClient::SqlApi* | [**import_prosody**](docs/SqlApi.md#import_prosody) | **POST** /api/import_prosody | Import data from Prosody.
*EjabberdHttpClient::SqlApi* | [**update_sql**](docs/SqlApi.md#update_sql) | **POST** /api/update_sql | Convert MS SQL, MySQL, or PostgreSQL DB to the new format.
*EjabberdHttpClient::StanzaApi* | [**privacy_set**](docs/StanzaApi.md#privacy_set) | **POST** /api/privacy_set | Send a IQ set privacy stanza for a local account.
*EjabberdHttpClient::StanzaApi* | [**send_message**](docs/StanzaApi.md#send_message) | **POST** /api/send_message | Send a message to a local or remote bare of full JID.
*EjabberdHttpClient::StanzaApi* | [**send_stanza**](docs/StanzaApi.md#send_stanza) | **POST** /api/send_stanza | Send a stanza; provide From JID and valid To JID.
*EjabberdHttpClient::StanzaApi* | [**send_stanza_c2_s**](docs/StanzaApi.md#send_stanza_c2_s) | **POST** /api/send_stanza_c2s | Send a stanza from an existing C2S session.
*EjabberdHttpClient::StatisticsApi* | [**connected_users_number**](docs/StatisticsApi.md#connected_users_number) | **POST** /api/connected_users_number | Get the number of established sessions.
*EjabberdHttpClient::StatisticsApi* | [**get_outgoing_s2s_number**](docs/StatisticsApi.md#get_outgoing_s2s_number) | **POST** /api/outgoing_s2s_number | Number of outgoing s2s connections on the node.
*EjabberdHttpClient::StatisticsApi* | [**get_stats**](docs/StatisticsApi.md#get_stats) | **POST** /api/stats | Get statistical value - registeredusers, onlineusers, onlineusersnode, uptimeseconds, processes.
*EjabberdHttpClient::StatisticsApi* | [**get_stats_host**](docs/StatisticsApi.md#get_stats_host) | **POST** /api/stats_host | Get statistical value for this host - registeredusers, onlineusers.
*EjabberdHttpClient::StatisticsApi* | [**get_status_num**](docs/StatisticsApi.md#get_status_num) | **POST** /api/status_num | Number of logged users with a specific status.
*EjabberdHttpClient::StatisticsApi* | [**get_status_num_host**](docs/StatisticsApi.md#get_status_num_host) | **POST** /api/status_num_host | Number of logged users with a specific status in a host.
*EjabberdHttpClient::StatisticsApi* | [**incoming_s2s_number**](docs/StatisticsApi.md#incoming_s2s_number) | **POST** /api/incoming_s2s_number | Number of incoming s2s connections on the node.
*EjabberdHttpClient::VcardApi* | [**get_vcard**](docs/VcardApi.md#get_vcard) | **POST** /api/get_vcard | Get content from a vCard field.
*EjabberdHttpClient::VcardApi* | [**get_vcard2**](docs/VcardApi.md#get_vcard2) | **POST** /api/get_vcard2 | Get content from a vCard subfield.
*EjabberdHttpClient::VcardApi* | [**get_vcard2_multi**](docs/VcardApi.md#get_vcard2_multi) | **POST** /api/get_vcard2_multi | Get multiple contents from a vCard field.
*EjabberdHttpClient::VcardApi* | [**set_nickname**](docs/VcardApi.md#set_nickname) | **POST** /api/set_nickname | Set nickname in a user's vCard.
*EjabberdHttpClient::VcardApi* | [**set_vcard**](docs/VcardApi.md#set_vcard) | **POST** /api/set_vcard | Set content in a vCard field.
*EjabberdHttpClient::VcardApi* | [**set_vcard2**](docs/VcardApi.md#set_vcard2) | **POST** /api/set_vcard2 | Set content in a vCard subfield.
*EjabberdHttpClient::VcardApi* | [**set_vcard2_multi**](docs/VcardApi.md#set_vcard2_multi) | **POST** /api/set_vcard2_multi | Set multiple contents in a vCard subfield.


## Documentation for Models

 - [EjabberdHttpClient::AbortDeleteOldMamMessages200Response](docs/AbortDeleteOldMamMessages200Response.md)
 - [EjabberdHttpClient::AbortDeleteOldMamMessagesRequest](docs/AbortDeleteOldMamMessagesRequest.md)
 - [EjabberdHttpClient::AddOAuthClientImplicitRequest](docs/AddOAuthClientImplicitRequest.md)
 - [EjabberdHttpClient::AddOAuthClientPasswordRequest](docs/AddOAuthClientPasswordRequest.md)
 - [EjabberdHttpClient::AddRosterItemRequest](docs/AddRosterItemRequest.md)
 - [EjabberdHttpClient::BackupRequest](docs/BackupRequest.md)
 - [EjabberdHttpClient::BanAccountRequest](docs/BanAccountRequest.md)
 - [EjabberdHttpClient::BookmarksToPepRequest](docs/BookmarksToPepRequest.md)
 - [EjabberdHttpClient::ChangeNodeNameRequest](docs/ChangeNodeNameRequest.md)
 - [EjabberdHttpClient::ChangePasswordRequest](docs/ChangePasswordRequest.md)
 - [EjabberdHttpClient::ChangeRoomOptionRequest](docs/ChangeRoomOptionRequest.md)
 - [EjabberdHttpClient::CheckAccountRequest](docs/CheckAccountRequest.md)
 - [EjabberdHttpClient::CheckModuleRequest](docs/CheckModuleRequest.md)
 - [EjabberdHttpClient::CheckPasswordHashRequest](docs/CheckPasswordHashRequest.md)
 - [EjabberdHttpClient::CheckPasswordRequest](docs/CheckPasswordRequest.md)
 - [EjabberdHttpClient::CompileRequest](docs/CompileRequest.md)
 - [EjabberdHttpClient::ConnectedUsersInfo200ResponseInner](docs/ConnectedUsersInfo200ResponseInner.md)
 - [EjabberdHttpClient::ConnectedUsersNumber200Response](docs/ConnectedUsersNumber200Response.md)
 - [EjabberdHttpClient::ConnectedUsersVHostRequest](docs/ConnectedUsersVHostRequest.md)
 - [EjabberdHttpClient::ConvertToScramRequest](docs/ConvertToScramRequest.md)
 - [EjabberdHttpClient::ConvertToYamlRequest](docs/ConvertToYamlRequest.md)
 - [EjabberdHttpClient::CreateRoomRequest](docs/CreateRoomRequest.md)
 - [EjabberdHttpClient::CreateRoomWithOptionsRequest](docs/CreateRoomWithOptionsRequest.md)
 - [EjabberdHttpClient::CreateRoomWithOptionsRequestOptionsInner](docs/CreateRoomWithOptionsRequestOptionsInner.md)
 - [EjabberdHttpClient::CreateRoomsFileRequest](docs/CreateRoomsFileRequest.md)
 - [EjabberdHttpClient::DeleteMnesiaRequest](docs/DeleteMnesiaRequest.md)
 - [EjabberdHttpClient::DeleteOldMAMMessagesBatchRequest](docs/DeleteOldMAMMessagesBatchRequest.md)
 - [EjabberdHttpClient::DeleteOldMAMMessagesRequest](docs/DeleteOldMAMMessagesRequest.md)
 - [EjabberdHttpClient::DeleteOldMAMMessagesStatusRequest](docs/DeleteOldMAMMessagesStatusRequest.md)
 - [EjabberdHttpClient::DeleteOldMessagesBatchRequest](docs/DeleteOldMessagesBatchRequest.md)
 - [EjabberdHttpClient::DeleteOldMessagesRequest](docs/DeleteOldMessagesRequest.md)
 - [EjabberdHttpClient::DeleteOldPubsubItemsRequest](docs/DeleteOldPubsubItemsRequest.md)
 - [EjabberdHttpClient::DeleteOldUsersRequest](docs/DeleteOldUsersRequest.md)
 - [EjabberdHttpClient::DumpConfigRequest](docs/DumpConfigRequest.md)
 - [EjabberdHttpClient::DumpRequest](docs/DumpRequest.md)
 - [EjabberdHttpClient::DumpTableRequest](docs/DumpTableRequest.md)
 - [EjabberdHttpClient::Export2sqlRequest](docs/Export2sqlRequest.md)
 - [EjabberdHttpClient::ExportPiefxisHostRequest](docs/ExportPiefxisHostRequest.md)
 - [EjabberdHttpClient::ExportPiefxisRequest](docs/ExportPiefxisRequest.md)
 - [EjabberdHttpClient::GenHtmlDocForCommandsRequest](docs/GenHtmlDocForCommandsRequest.md)
 - [EjabberdHttpClient::GenMarkdownDocForTagsRequest](docs/GenMarkdownDocForTagsRequest.md)
 - [EjabberdHttpClient::GetCookie200Response](docs/GetCookie200Response.md)
 - [EjabberdHttpClient::GetLast200Response](docs/GetLast200Response.md)
 - [EjabberdHttpClient::GetLastRequest](docs/GetLastRequest.md)
 - [EjabberdHttpClient::GetLoglevel200Response](docs/GetLoglevel200Response.md)
 - [EjabberdHttpClient::GetNumResources200Response](docs/GetNumResources200Response.md)
 - [EjabberdHttpClient::GetOfflineCount200Response](docs/GetOfflineCount200Response.md)
 - [EjabberdHttpClient::GetOfflineCountRequest](docs/GetOfflineCountRequest.md)
 - [EjabberdHttpClient::GetOutgoingS2sNumber200Response](docs/GetOutgoingS2sNumber200Response.md)
 - [EjabberdHttpClient::GetPresence200Response](docs/GetPresence200Response.md)
 - [EjabberdHttpClient::GetRoomAffiliation200Response](docs/GetRoomAffiliation200Response.md)
 - [EjabberdHttpClient::GetRoomAffiliationRequest](docs/GetRoomAffiliationRequest.md)
 - [EjabberdHttpClient::GetRoomAffiliations200ResponseInner](docs/GetRoomAffiliations200ResponseInner.md)
 - [EjabberdHttpClient::GetRoomAffiliationsRequest](docs/GetRoomAffiliationsRequest.md)
 - [EjabberdHttpClient::GetRoomHistory200ResponseInner](docs/GetRoomHistory200ResponseInner.md)
 - [EjabberdHttpClient::GetRoomOccupants200ResponseInner](docs/GetRoomOccupants200ResponseInner.md)
 - [EjabberdHttpClient::GetRoomOccupantsNumber200Response](docs/GetRoomOccupantsNumber200Response.md)
 - [EjabberdHttpClient::GetRoomOptions200ResponseInner](docs/GetRoomOptions200ResponseInner.md)
 - [EjabberdHttpClient::GetRoster200ResponseInner](docs/GetRoster200ResponseInner.md)
 - [EjabberdHttpClient::GetStats200Response](docs/GetStats200Response.md)
 - [EjabberdHttpClient::GetStatsHostRequest](docs/GetStatsHostRequest.md)
 - [EjabberdHttpClient::GetStatsRequest](docs/GetStatsRequest.md)
 - [EjabberdHttpClient::GetStatusList200ResponseInner](docs/GetStatusList200ResponseInner.md)
 - [EjabberdHttpClient::GetStatusListHostRequest](docs/GetStatusListHostRequest.md)
 - [EjabberdHttpClient::GetStatusListRequest](docs/GetStatusListRequest.md)
 - [EjabberdHttpClient::GetStatusNum200Response](docs/GetStatusNum200Response.md)
 - [EjabberdHttpClient::GetUserRoomsRequest](docs/GetUserRoomsRequest.md)
 - [EjabberdHttpClient::GetUserSessionsInfo200ResponseInner](docs/GetUserSessionsInfo200ResponseInner.md)
 - [EjabberdHttpClient::GetUserSubscriptions200ResponseInner](docs/GetUserSubscriptions200ResponseInner.md)
 - [EjabberdHttpClient::GetVcard200Response](docs/GetVcard200Response.md)
 - [EjabberdHttpClient::GetVcard2MultiRequest](docs/GetVcard2MultiRequest.md)
 - [EjabberdHttpClient::GetVcard2Request](docs/GetVcard2Request.md)
 - [EjabberdHttpClient::GetVcardRequest](docs/GetVcardRequest.md)
 - [EjabberdHttpClient::ImportDir200Response](docs/ImportDir200Response.md)
 - [EjabberdHttpClient::ImportDirRequest](docs/ImportDirRequest.md)
 - [EjabberdHttpClient::ImportFileRequest](docs/ImportFileRequest.md)
 - [EjabberdHttpClient::ImportPiefxisRequest](docs/ImportPiefxisRequest.md)
 - [EjabberdHttpClient::ImportProsodyRequest](docs/ImportProsodyRequest.md)
 - [EjabberdHttpClient::IncomingS2sNumber200Response](docs/IncomingS2sNumber200Response.md)
 - [EjabberdHttpClient::InstallFallbackRequest](docs/InstallFallbackRequest.md)
 - [EjabberdHttpClient::IssueOAuthToken200Response](docs/IssueOAuthToken200Response.md)
 - [EjabberdHttpClient::IssueOAuthTokenRequest](docs/IssueOAuthTokenRequest.md)
 - [EjabberdHttpClient::JoinClusterRequest](docs/JoinClusterRequest.md)
 - [EjabberdHttpClient::KickSessionRequest](docs/KickSessionRequest.md)
 - [EjabberdHttpClient::KickUser200Response](docs/KickUser200Response.md)
 - [EjabberdHttpClient::LeaveClusterRequest](docs/LeaveClusterRequest.md)
 - [EjabberdHttpClient::ListCertificates200ResponseInner](docs/ListCertificates200ResponseInner.md)
 - [EjabberdHttpClient::ListMucOnlineRoomsByRegex200ResponseInner](docs/ListMucOnlineRoomsByRegex200ResponseInner.md)
 - [EjabberdHttpClient::ListMucOnlineRoomsByRegexRequest](docs/ListMucOnlineRoomsByRegexRequest.md)
 - [EjabberdHttpClient::ListMucOnlineRoomsRequest](docs/ListMucOnlineRoomsRequest.md)
 - [EjabberdHttpClient::ListOAuthTokens200ResponseInner](docs/ListOAuthTokens200ResponseInner.md)
 - [EjabberdHttpClient::LoadDatabaseRequest](docs/LoadDatabaseRequest.md)
 - [EjabberdHttpClient::PrivacySetRequest](docs/PrivacySetRequest.md)
 - [EjabberdHttpClient::PrivateGetRequest](docs/PrivateGetRequest.md)
 - [EjabberdHttpClient::PrivateSetRequest](docs/PrivateSetRequest.md)
 - [EjabberdHttpClient::ProcessRosterItems200ResponseInner](docs/ProcessRosterItems200ResponseInner.md)
 - [EjabberdHttpClient::ProcessRosterItemsRequest](docs/ProcessRosterItemsRequest.md)
 - [EjabberdHttpClient::PushAllToAllRequest](docs/PushAllToAllRequest.md)
 - [EjabberdHttpClient::PushRosterAllRequest](docs/PushRosterAllRequest.md)
 - [EjabberdHttpClient::PushRosterRequest](docs/PushRosterRequest.md)
 - [EjabberdHttpClient::RegisterMucNickRequest](docs/RegisterMucNickRequest.md)
 - [EjabberdHttpClient::RegisterRequest](docs/RegisterRequest.md)
 - [EjabberdHttpClient::RegisteredUsersRequest](docs/RegisteredUsersRequest.md)
 - [EjabberdHttpClient::RemoveMamForUserWithPeerRequest](docs/RemoveMamForUserWithPeerRequest.md)
 - [EjabberdHttpClient::RemoveOAuthClientRequest](docs/RemoveOAuthClientRequest.md)
 - [EjabberdHttpClient::RequestCertificateRequest](docs/RequestCertificateRequest.md)
 - [EjabberdHttpClient::ResourceNum200Response](docs/ResourceNum200Response.md)
 - [EjabberdHttpClient::ResourceNumRequest](docs/ResourceNumRequest.md)
 - [EjabberdHttpClient::RestartModule200Response](docs/RestartModule200Response.md)
 - [EjabberdHttpClient::RestartModuleRequest](docs/RestartModuleRequest.md)
 - [EjabberdHttpClient::RestoreRequest](docs/RestoreRequest.md)
 - [EjabberdHttpClient::RevokeCertificateRequest](docs/RevokeCertificateRequest.md)
 - [EjabberdHttpClient::RevokeOAuthTokenRequest](docs/RevokeOAuthTokenRequest.md)
 - [EjabberdHttpClient::RoomsEmptyDestroyRequest](docs/RoomsEmptyDestroyRequest.md)
 - [EjabberdHttpClient::RoomsUnusedDestroyRequest](docs/RoomsUnusedDestroyRequest.md)
 - [EjabberdHttpClient::SendDirectInvitationRequest](docs/SendDirectInvitationRequest.md)
 - [EjabberdHttpClient::SendMessageRequest](docs/SendMessageRequest.md)
 - [EjabberdHttpClient::SendStanzaC2SRequest](docs/SendStanzaC2SRequest.md)
 - [EjabberdHttpClient::SendStanzaRequest](docs/SendStanzaRequest.md)
 - [EjabberdHttpClient::SetLastRequest](docs/SetLastRequest.md)
 - [EjabberdHttpClient::SetLoglevelRequest](docs/SetLoglevelRequest.md)
 - [EjabberdHttpClient::SetMasterRequest](docs/SetMasterRequest.md)
 - [EjabberdHttpClient::SetNicknameRequest](docs/SetNicknameRequest.md)
 - [EjabberdHttpClient::SetPresenceRequest](docs/SetPresenceRequest.md)
 - [EjabberdHttpClient::SetRoomAffiliationRequest](docs/SetRoomAffiliationRequest.md)
 - [EjabberdHttpClient::SetVcard2MultiRequest](docs/SetVcard2MultiRequest.md)
 - [EjabberdHttpClient::SetVcard2Request](docs/SetVcard2Request.md)
 - [EjabberdHttpClient::SetVcardRequest](docs/SetVcardRequest.md)
 - [EjabberdHttpClient::SrgCreateRequest](docs/SrgCreateRequest.md)
 - [EjabberdHttpClient::SrgDeleteRequest](docs/SrgDeleteRequest.md)
 - [EjabberdHttpClient::SrgGetInfo200ResponseInner](docs/SrgGetInfo200ResponseInner.md)
 - [EjabberdHttpClient::SrgUserAddRequest](docs/SrgUserAddRequest.md)
 - [EjabberdHttpClient::StopKindlyRequest](docs/StopKindlyRequest.md)
 - [EjabberdHttpClient::SubscribeToRoomManyRequest](docs/SubscribeToRoomManyRequest.md)
 - [EjabberdHttpClient::SubscribeToRoomManyRequestUsersInner](docs/SubscribeToRoomManyRequestUsersInner.md)
 - [EjabberdHttpClient::SubscribeToRoomRequest](docs/SubscribeToRoomRequest.md)
 - [EjabberdHttpClient::TableMnesiaInfoRequest](docs/TableMnesiaInfoRequest.md)
 - [EjabberdHttpClient::UnbanIp200Response](docs/UnbanIp200Response.md)
 - [EjabberdHttpClient::UnbanIpRequest](docs/UnbanIpRequest.md)
 - [EjabberdHttpClient::UnregisterMucNickRequest](docs/UnregisterMucNickRequest.md)
 - [EjabberdHttpClient::UnregisterUserRequest](docs/UnregisterUserRequest.md)
 - [EjabberdHttpClient::UnsubscribeFromRoomRequest](docs/UnsubscribeFromRoomRequest.md)

## Testing
First, install dependencies, then run tests:

```shell
  bundle install
  bundle exec rspec
```

## Contributing
Contributions are welcome! Please read our [Code of Conduct](https://github.com/arjun9/ejabberd_http_client/blob/main/CODE_OF_CONDUCT.md) before contributing to help this project stay welcoming.

* Fork it (https://github.com/arjun9/ejabberd_http_client/fork)
* Create your feature branch (git checkout -b feature/fooBar)
* Commit your changes (git commit -am 'Add some fooBar')
* Push to the branch (git push origin feature/fooBar)
* Create a new Pull Request

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/arjun9/ejabberd_http_client/blob/main/LICENSE.txt) file for details.

## Code of Conduct
Please note that this project is released with a Contributor [Code of Conduct](https://github.com/arjun9/ejabberd_http_client/blob/main/CODE_OF_CONDUCT.md). By participating in this project, you agree to abide by its terms.

## Changelog
For all notable changes made to this project, see the [Changelog](https://github.com/arjun9/ejabberd_http_client/blob/master/CHANGELOG.md).





