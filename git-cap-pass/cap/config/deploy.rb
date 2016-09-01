lock '3.4.0'

set :application, 'app'

set :scm, :git

set :linked_files, %w{config/database.yml config/application.yml config/secrets.yml}

