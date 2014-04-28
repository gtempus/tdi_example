#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'tdi' do
      action :create
      comment "Test Driven Infrastructure"
      home "/home/tdi"
      manage_home true
end

package "irssi" do
  action :install
end

directory "/home/tdi/.irssi" do
  owner 'tdi'
  group 'tdi'
  mode 0755
  action :create
end

cookbook_file "config" do
  path "/home/tdi/.irssi/config"
  action :create_if_missing
end
