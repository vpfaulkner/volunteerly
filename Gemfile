source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', github: "rails/rails"

gem 'devise', git: 'git@github.com:plataformatec/devise.git'
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', github: "rails/coffee-rails"
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'em-hiredis', '~> 0.3.0'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'redis', '~> 3.0'
gem 'puma'
gem 'pg'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
  gem 'pry'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker', '>= 1.6.1'
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda-matchers'
end

group :development do
  # gem 'web-console', github: 'rails/web-console'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
