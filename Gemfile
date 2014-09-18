source 'https://rubygems.org'

  ruby '1.9.3'

  gem "pg"
  gem "unicorn" # Change this to another web server if you want (ie. unicorn, passenger, puma...)
  gem "rails_12factor"

gem 'rails', '~> 4.1.1'
gem 'htmlentities'
gem 'bluecloth', '~> 2.1'
gem 'coderay', '~> 1.1.0'
gem 'kaminari'
gem 'RedCloth', '~> 4.2.8'
gem 'addressable', '~> 2.1', :require => 'addressable/uri'
gem 'mini_magick', '~> 3.7.0', :require => 'mini_magick'
gem 'uuidtools', '~> 2.1.1'
gem 'flickraw-cached'
gem 'rubypants', '~> 0.2.0'
gem 'rake', '~> 10.1.0'
#gem 'acts_as_list'
#gem 'acts_as_tree_rails3'
gem 'fog', '~>1.20.0'
gem 'recaptcha', :require => 'recaptcha/rails', :branch => 'rails3'
gem 'carrierwave', '~> 0.10.0'
gem 'akismet', '~> 1.0'
gem 'twitter', '~> 5.6.0'

gem "jquery-rails", "~> 3.1.0"
gem "jquery-ui-rails", "~> 4.2.0"

gem 'rails_autolink', '~> 1.1.0'
gem 'dynamic_form', '~> 1.1.4'

gem 'non-stupid-digest-assets'

# removed from Rails-core as Rails 4.0
gem 'actionpack-page_caching', '~> 1.0.2'
gem 'rails-observers', '~> 0.1.2'

group :assets do
  gem 'sass-rails', " ~> 4.0.3"
  gem 'coffee-rails', " ~> 4.0.1"
  gem 'uglifier'
end

group :development, :test do
  gem 'thin'
  gem 'factory_girl', '~> 4.2.0'
  gem 'capybara'
  gem 'rspec-rails', '~> 2.99.0'
  gem 'simplecov', :require => false
  gem 'pry-rails'
end

# Install gems as additional
Dir.glob(File.join(File.dirname(__FILE__), "Gemfile.local")) do |gemlocal|
  eval(IO.read(gemlocal), binding)
end

# Install gems from each theme
Dir.glob(File.join(File.dirname(__FILE__), 'themes', '**', "Gemfile")) do |gemfile|
  eval(IO.read(gemfile), binding)
end
