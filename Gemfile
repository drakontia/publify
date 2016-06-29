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
gem 'jquery-rails', '~> 4.1.0'

gem 'jquery-ui-rails', '~> 5.0.2'
gem 'RedCloth', '~> 4.3.1'
gem 'actionpack-page_caching', '~> 1.0.2' # removed from Rails-core as Rails 4.0
gem 'addressable', '~> 2.1', require: 'addressable/uri'
gem 'akismet', '~> 2.0'
gem 'bluecloth', '~> 2.1'
gem 'cancancan', '~> 1.14.0'
gem 'carrierwave', '~> 0.11.2'
gem 'coderay', '~> 1.1.0'
gem 'devise', '~> 4.1.1'
gem 'devise-i18n', '~> 1.0.0'
gem 'dynamic_form', '~> 1.1.4'
gem 'flickraw-cached', '20120701'
gem 'flickraw', '~> 0.9.8'
gem 'fog-aws', '~> 0.9.2'
gem 'htmlentities', '~> 4.3'
gem 'kaminari', '~> 0.16.3'
gem 'mini_magick', '~> 4.2', require: 'mini_magick'
gem 'non-stupid-digest-assets', '~> 1.0'
gem 'rails-observers', '~> 0.1.2'
gem 'rails-timeago', '~> 2.0'
gem 'rails_autolink', '~> 1.1.0'
gem 'rake', '~> 11.1'
gem 'recaptcha', '~> 2.1', require: 'recaptcha/rails'
gem 'rubypants', '~> 0.2.0'
gem 'twitter', '~> 5.16.0'
gem 'uuidtools', '~> 2.1.1'
gem 'feedjira', '~> 2.0.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 9.0'

  gem 'factory_girl', '~> 4.5'
  gem 'capybara', '~> 2.7'
  gem 'rspec-rails', '~> 3.4.0'
  gem 'simplecov', '~> 0.11.2', require: false
  gem 'pry-rails', '~> 0.3.4'
  gem 'pry', '~> 0.10.3'

  gem 'rubocop', '~> 0.40.0', require: false
  gem 'i18n-tasks', '~> 0.9.1' if RUBY_VERSION >= '2.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0' if RUBY_VERSION >= '2.2.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.7'
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'spring-commands-cucumber', '~> 1.0'

  gem 'thin', '~> 1.6'
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'quiet_assets', '~> 1.1'
  gem 'guard-rspec'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 0.5.0', require: nil
end

# Install gems as additional
Dir.glob(File.join(File.dirname(__FILE__), "Gemfile.local")) do |gemlocal|
  eval(IO.read(gemlocal), binding)
end

# Install gems from each theme
Dir.glob(File.join(File.dirname(__FILE__), 'themes', '**', 'Gemfile')) do |gemfile|
  eval(IO.read(gemfile), binding)
end
