Chef::Log.info("#### Setup Executed ####") 

user "Add user for Don Pezet" do
  home "/home/dpezet"
  shell "/bin/bash"
  username "dpezet"
end

cookbook_file "Install website files" do
  group "root"
  mode "0755"
  owner "root"
  path "/var/www/html/index.php"
  source "index.php"
end

service "Start Apache" do
  action :start
  service_name "httpd"  
end