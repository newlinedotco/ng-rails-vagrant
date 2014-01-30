run_list [
  'recipe[apt]',
  'recipe[git]',
  'recipe[rvm::system]',
  'recipe[rvm::user]',
  'recipe[base]'
]
