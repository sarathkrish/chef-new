

if node['platform_family'] == 'rhel'
 filepath = '/var/www/html/index.html'
else
filepath = '/var/www/index.html'
end

file 'default www' do
  path filepath
  content 'Hello World!'
end

