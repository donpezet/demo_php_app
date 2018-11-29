package 'httpd' do
  action :install
end

package 'php' do
  action :install
end

service 'httpd' do
  action :start
end

template '/var/www/html/index.php' do
  source 'index.php.erb'
end