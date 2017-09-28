namespace :app do
  desc "Starts front-end and back-end servers"
  task start: :environment do
  	system 'foreman start -f Procfile.dev -e dev.env'
  end

  desc "Starts back-end server"
  task start_backend: :environment do
  	system 'rails s -p 3001'
  end
end
