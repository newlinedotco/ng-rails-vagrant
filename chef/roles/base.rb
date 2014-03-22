run_list [
  'recipe[apt]',
  'recipe[git]',
  'recipe[rvm::system]',
  'recipe[rvm::vagrant]',
  'recipe[rvm::user]',
  'recipe[nodejs::install_from_package]',
  'recipe[nodejs::npm]',
  'recipe[openssl]',
  'recipe[postgresql]',
  'recipe[postgresql::contrib]', 
  'recipe[postgresql::server]',
  'recipe[database]',
  'recipe[base]',
  'recipe[base::user_setup]',
  'recipe[heroku-toolbelt]'
]
