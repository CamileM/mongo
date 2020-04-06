#
# Cookbook:: mongo
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mongo::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'should install mongodb' do
      expect(chef_run).to install_package 'mongodb'
    end

    it 'should start mongodb' do
      expect(chef_run). to start_service 'mongodb'

    it 'mongo-org should be in source list' do
      expect{ is_expected.to render_file('/etc/apt/sources.list').with_content('mongo') }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    # # Test to check if recipe includes package vagrant-berkshelf
    # it 'should install vagrant-berkshelf' do
    #   expect(chef_run).to install_package 'vagrant-berkshelf'
    #   end
    #
    #   # Test to check of my provision file include starting vagrant-berkshelf
    # it 'should start vagrant-berkshelf --helloo! install it this is just a message' do
    #   expect(chef_run).to start_service 'vagrant-berkshelf'
    # end
    #
    # # Test to check if recipe includes package sc-mongodb
    # it 'should install sc-mongodb' do
    #   expect(chef_run).to install_package 'sc-mongodb'
    #   end
    #
    #   # Test to check of my provision file include starting sc-mongodb
    # it 'should start sc-mongodb' do
    #   expect(chef_run).to start_service 'sc-mongodb'
    # end

  end
end
