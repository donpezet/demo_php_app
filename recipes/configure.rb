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

directory "Create log directory" do
  group "root"
  mode "0755"
  owner "ec2-user"
  path "/var/log/customapp"
end