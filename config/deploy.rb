# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"


set :application, "tps_chat"
set :repo_url, "git@github.com:bhaumikgithub/tps_chat.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "project/tps_chat"
set :deploy_to, 'project/demo'
set :rvm_ruby_version, '2.6.3'

set :passenger_restart_with_touch, true
set :stage, :production
set :rails_env, :production
set :branch, "master"
# set :use_sudo, true
set :user, 'ubuntu'

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
# role :app, %w{ubuntu@13.233.109.182}
# role :web, %w{ubuntu@13.233.109.182}
# role :db,  %w{ubuntu@13.233.109.182}

server '13.233.109.182', user: 'ubuntu', primary: true
set :ssh_options, {
   keys: %w(/home/tps/.ec2/tps_skype.pem),
   forward_agent: true,
   auth_methods: %w[publickey]
 }



# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
