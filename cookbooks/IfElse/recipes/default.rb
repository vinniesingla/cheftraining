#
# Cookbook:: IfElse
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['hostname'] == 'node1'
#  put 'name of the host is X'
else
#  put 'name of the host is y'
end
