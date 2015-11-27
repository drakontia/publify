source 'https://rubygems.org'

# if ENV["HEROKU"]
  ruby '2.1.5'

  gem 'pg'
  gem 'puma' # Change this to another web server if you want (ie. unicorn, passenger, puma...)
  gem 'rails_12factor'
# end

gem 'rails', '~> 4.2.5'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.4'

gem 'jquery-ui-rails', '~> 5.0.2'
gem 'RedCloth', '~> 4.2.8'
gem 'actionpack-page_caching', '~> 1.0.2' # removed from Rails-core as Rails 4.0
gem 'addressable', '~> 2.1', require: 'addressable/uri'
gem 'akismet', '~> 2.0'
gem 'bluecloth', '~> 2.1'
gem 'carrierwave', '~> 0.10.0'
gem 'coderay', '~> 1.1.0'
gem 'dynamic_form', '~> 1.1.4'
gem 'flickraw-cached'
gem 'fog'
gem 'net-ssh'
gem 'htmlentities'
gem 'kaminari'
gem 'mini_magick', '~> 4.2', require: 'mini_magick'
gem 'non-stupid-digest-assets'
gem 'rails-observers', '~> 0.1.2'
gem 'rails-timeago', '~> 2.0'
gem 'rails_autolink', '~> 1.1.0'
gem 'rake', '~> 10.4.2'
gem 'recaptcha', require: 'recaptcha/rails', branch: 'rails3'
gem 'rubypants', '~> 0.2.0'
gem 'twitter', '~> 5.14.0'
gem 'uuidtools', '~> 2.1.1'
gem 'rubocop', '~> 0.35.1', require: false
gem 'therubyracer', :platforms => :ruby

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.2.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'thin'
  gem 'factory_girl', '~> 4.5.0'
  gem 'capybara'
  gem 'rspec-rails', '~> 3.3.1'
  gem 'simplecov', require: false
  gem 'pry-rails'
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller'
  gem 'guard-rspec'
  gem 'quiet_assets'
end

group :test do
  gem 'feedjira'
  gem 'codeclimate-test-reporter', require: nil
end

# Install gems as additional
Dir.glob(File.join(File.dirname(__FILE__), "Gemfile.local")) do |gemlocal|
  eval(IO.read(gemlocal), binding)
end

# Install gems from each theme
Dir.glob(File.join(File.dirname(__FILE__), 'themes', '**', 'Gemfile')) do |gemfile|
  eval(IO.read(gemfile), binding)
end
