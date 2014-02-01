#
# Cookbook Name:: base
# Recipe:: user_setup
#
# Copyright 2014, Fullstack.io 
# Nate Murray
#

users = ["vagrant"]

users.each do |user|

  template "/home/#{user}/.bashrc" do
    owner user
    group user
    mode 0644
    source "bashrc.sh.erb"
    variables({ 
      :user => user,
      :project => "fullstack",
      :segment => "ng-rails",
    })
  end

  template "/home/#{user}/.inputrc" do
    owner user
    group user
    mode 0644
    source "inputrc.sh.erb"
  end

end

