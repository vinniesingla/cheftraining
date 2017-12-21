# Cookbook:: DSL
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# This is the way to declare variables in DSL language
variable = 'myvalue'

file '/root/DSL' do
  content variable
end


# This will create directories in root
['1','2', '3'].each do |obj1|
# '#{obj1}' syntax is used to fetch the value of obj1 when rest content is put in double quotes
  directory "/root/demo#{obj1}" do
    action :create
  end
  file "root/demo#{obj1}/file#{obj1}" do
#This prints the host name of the node on which the script executes 
    content "name of the node is --> #{node['hostname']}"
    action :create
  end
end

# %w is another way to declare array in DSL
# This function will create files in directories created
%w(z y x).each do |obj2|
  file "root/demo#{obj2}" do
    action :create
  end
end
