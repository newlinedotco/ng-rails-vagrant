#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 Fullstack.io
#
package "tree"
package "lynx-cur"
package "tmux"
include_recipe "rvm::user"

npm_package "grunt-cli" do
  version "0.1.9"
  action :install
end 

# for phantom
package "libfontconfig1" 
package "fontconfig" 
package "libfontconfig1-dev" 
package "libfreetype6-dev"

# TODO this will go to a db cookbook
include_recipe "database::postgresql"
# create a postgresql database
connection_info =  {
  :host      => '127.0.0.1',
  :port      => 5432,
  :username  => 'postgres',
  :password  => node['postgresql']['password']['postgres']
}

["development", "test"].each do |environment|
  postgresql_database "popcorn_#{environment}" do
    connection connection_info
    action :create
  end
end

# Create a postgresql user but grant no privileges
postgresql_database_user 'popcorn' do
  connection connection_info
  password   node['postgresql']['password']['postgres']
  action     :create 
end