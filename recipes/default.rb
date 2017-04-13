#
# Cookbook Name:: chef_breaking_machine
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

git_client 'default' do
	action :install
end

############

include_recipe 'nvm'

nvm_install '7.8' do
	action :create
	from_source false
	alias_as_default true
end

nvm_alias_default '7.8' do
	action :create
end

######

# include_recipe 'nginx::repo'

# package 'nginx' do
#   action :install
# end

# service 'nginx' do
#   supports status: true, restart: true, reload: true
#   action :enable
# end
