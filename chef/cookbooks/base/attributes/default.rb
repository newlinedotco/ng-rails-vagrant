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

default['postgresql']['pg_hba'] = [
  {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'trust'},
  {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'ident'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'}
]

override['postgresql']['password']['postgres'] = "popcorn"
override['postgresql']['contrib']['extensions'] = [
  "hstore"
]
