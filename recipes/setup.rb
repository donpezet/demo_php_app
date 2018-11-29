Chef::Log.info("#### Setup Executed ####") 

user "Add user for Don Pezet" do
  home "/home/dpezet"
  shell "/bin/bash"
  username "dpezet"
end

directory "Create log directory" do
  group "root"
  mode "0755"
  owner "ec2-user"
  path "/var/log/customapp"
end

service "Start Apache" do
  action :start
  service_name "httpd"  
end