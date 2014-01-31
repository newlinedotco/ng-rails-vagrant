override['rvm']['vagrant']['system_chef_client'] = "/opt/chef/bin/chef-client"
override['rvm']['vagrant']['system_chef_solo'] = "/opt/chef/bin/chef-solo"
override['rvm']['user_installs'] = [
  { 
    'user'            => 'vagrant',
    'default_ruby'    => 'ruby-2.0.0-p195',
    'global_gems'     => [
      { 'name'    => 'bundler',
        'version' => '1.5.2' },
      { 'name'    => 'rails',
        'version' => '4.0.2' },
      { 'name'    => 'rake' }
    ]
  }
]
