require "active_record"
cwd = File.dirname(__FILE__)+"/.."
HEROKU ENV['HEROKU'] || true
ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["RACK_ENV"]])
ActiveRecord::Base.verify_active_connections!
