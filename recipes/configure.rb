Chef::Log.info("#### Configure Executed ####")

package "Install Apache" do
  package_name "httpd"
end

package "Install PHP" do
  package_name "php"
end

service "Start Apache" do
  action :start
  service_name "httpd"  
end

cookbook_file "Install website files" do
  group "root"
  mode "0755"
  owner "root"
  path "/var/www/html/index.php"
  source "index.php"
end