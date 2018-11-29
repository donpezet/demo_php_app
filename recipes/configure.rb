Chef::Log.info("#### Configure Executed ####")

package "Install Apache" do
  package_name "httpd"
end 

package "Install PHP" do
  package_name "php"
end 