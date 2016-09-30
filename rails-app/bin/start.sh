export SECRET_KEY_BASE=`RAILS_ENV=production rake secret`
rm -rf tmp/pids/server.pid
bundle exec rake db:migrate
bundle exec rails s -b 0.0.0.0
