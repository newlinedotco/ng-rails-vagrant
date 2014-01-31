run_list [
  'recipe[apt]',
  'recipe[git]',
  'recipe[rvm::system]',
  'recipe[rvm::vagrant]',
  'recipe[rvm::user]',
  'recipe[nodejs::install_from_package]',
  'recipe[nodejs::npm]',
  'recipe[base]'
]
