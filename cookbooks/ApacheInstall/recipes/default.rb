#
# Cookbook:: ApacheInstall
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content "name of node is --> #{node['hostname']}"
#  content "role on node is --> #{role['rolename']}"
end


