#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved

if node['platform_family'] == 'rhel' 
  package = 'httpd'
else
  package = 'apache2'
end

package 'apache' do
  package_name package
  action :install
end

service 'apache' do
 service_name package
 action [:start, :enable]
end

