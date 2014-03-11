###
# Vagrant
###

Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ng-rails-01"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "/Users/nmurray/Desktop/ng-rails-base.box" # originally => 'https://dl.dropboxusercontent.com/u/36642341/ubuntu-12.04-omnibus-chef.box'

  # virtualbox vm name
  config.vm.define "ng-rails-01" do |box|
  end

  config.vm.network :private_network, :ip => '10.70.70.70'


  config.vm.synced_folder(
    host_dir=File.dirname(__FILE__) + "/shared",
    guest_dir="/home/vagrant/shared",
    :create => true,
    :nfs => true
  )

  config.ssh.forward_agent = true
  config.vm.provider 'virtualbox' do |v|
    v.customize [ 'modifyvm', :id, '--memory', "1024" ]
  end

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = 'chef/roles'

    chef.add_role('base')

    chef.json = {
    }
  end
end
