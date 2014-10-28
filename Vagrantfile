###
# Vagrant
###

Vagrant.configure('2') do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ng-rails-03"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://downloads.fullstackedu.com/ng-rails/ng-rails-fullstackio.box" # originally => 'https://dl.dropboxusercontent.com/u/36642341/ubuntu-12.04-omnibus-chef.box'

  # virtualbox vm name
  config.vm.define "ng-rails-03" do |box|
  end

  config.vm.network :private_network, :ip => '10.70.70.70'


  config.vm.synced_folder "./shared", "/home/vagrant/shared", id: "vagrant-root",
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=755,fmode=755"]


  config.ssh.forward_agent = true
  config.vm.provider 'virtualbox' do |v|
    v.customize [ 'modifyvm', :id, '--memory', "1024" ]
  end

  # BEGIN developers-only-section
  # config.berkshelf.enabled = true
  # config.vm.provision :chef_solo do |chef|
  #   chef.roles_path = 'chef/roles'
  #   chef.add_role('base')
  #   chef.json = {
  #   }
  # end
  # END developers-only-section
end
