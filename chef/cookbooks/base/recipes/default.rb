#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 Fullstack.io
#
package "tree"
package "lynx-cur"
include_recipe "rvm::user"

npm_package "grunt-cli" do
  version "0.1.9"
  action :install
end 
