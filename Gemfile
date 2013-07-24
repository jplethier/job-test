source 'http://rubygems.org'

gem 'rails', '3.1.10'

# Database
gem 'pg', '0.14.1', :require => 'pg'
gem 'activerecord-postgresql-adapter'

# Views
gem 'haml'
gem 'haml-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'awesome_print'
  gem 'factory_girl_rails'
  gem 'letter_opener'
  gem 'pry-debugger'
  gem "rspec-rails"
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '>= 1.0.1'
  gem 'launchy'
end
