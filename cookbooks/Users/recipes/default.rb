#
# Cookbook:: Users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

search( :USERS, '*:*').each do |obj|
  user "#{obj['id']}" do
    home "#{obj['home']}"
    uid "#{obj['uid']}"
    action :create
  end
end
