source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'


gem 'rails', '~> 6.0.0.rc1'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'simple_form'
gem 'bcrypt', '~> 3.1.7'
gem 'devise', '~> 4.6', '>= 4.6.2'
group :assets do
  gem 'sass-rails', '~> 5.0', '>= 5.0.7'
  gem 'uglifier', '~> 4.1', '>= 4.1.20'
  gem 'coffee-rails', '~> 5.0'
  gem 'therubyracer', platforms: :ruby
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_girl_rails'
end

gem 'bootsnap', require: false
gem 'listen', '~> 3.1', '>= 3.1.5'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'sqlite3', '~> 1.4', '>= 1.4.1'
end



