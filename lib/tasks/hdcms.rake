namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app helptodo --confirm helptodo
      heroku run rake db:migrate --app helptodo
      heroku run rake db:seed --app helptodo')
  end
end
