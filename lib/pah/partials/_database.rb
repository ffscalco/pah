copy_static_file 'config/database.yml'
gsub_file 'config/database.yml', /PROJECT/, @app_name
git add: 'config/database.yml'
git_commit 'Add config/database.yml.'

run "bundle exec rake db:create db:migrate db:test:clone"

git add: 'db/schema.rb'
git_commit 'Create database, adding db/schema.rb.'
