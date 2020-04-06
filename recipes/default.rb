#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.


#### ====== WE WRITE OUR PROVISION FOR MONGODB HERE ====== ####

apt_update

package 'mongodb' do
  version '1:3.6.3-0ubuntu1'
end

service 'mongodb' do
  action [:enable, :start]
end

# Installing vagrant-berkshelf
  # sudo apt-get update vagrant-berkshelf
# package 'vagrant-berkshelf'
#
# yum_package('vagrant-berkshelf') do
#   action [:install]
# end
#
# # Installing MongoDB
#   # sudo apt-get update sc-mongodb
# package 'sc-mongodb'
#
# # sudo systemctl start vagrant-berkshelf
# service 'vagrant-berkshelf' do
#   action [:enable, :start]
# end
#
# # sudo systemctl start MongoDB
# service 'sc-mongodb' do
#   action [:enable, :start]
# end
#
