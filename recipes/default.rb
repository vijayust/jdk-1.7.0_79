#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "copy" do
  cwd "/opt"
  command "wget http://203.99.43.240:8080/FogPanel/fog_dependencies/jdk-7u79-linux-x64.tar.gz"
end

execute "tar" do
  cwd "/opt"
  command "tar xvf jdk-7u79-linux-x64.tar.gz"
  action :run
end

execute "install_alt_java" do
   command "alternatives --install /usr/bin/java java /opt/jdk1.7.0_79/bin/java 2"
end

execute "update_alt_java" do
  command "update-alternatives --set java /opt/jdk1.7.0_79/bin/java"
end

