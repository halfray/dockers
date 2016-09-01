ENV["HOME"]='/root'
set :repo_url, ENV["APP_GIT_URL"]
set :branch, ENV["APP_BRANCH"] ? ENV["APP_BRANCH"] : 'master'
server 'localhost', user: 'root', roles: %w{web app db}
set :deploy_to, "/home/app/www/"
