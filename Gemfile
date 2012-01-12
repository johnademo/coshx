source "http://rubygems.org"

gem "rails", "3.1.3"

# database
gem "pg"

# authenticate & authorization
gem "devise"

# presentation
gem "redcarpet"
gem "pygmentize"
gem "nokogiri"
gem "jquery-rails"
gem "haml-rails"
gem "gravatar-ultimate"
gem "kaminari"

# To use debugger
# gem "ruby-debug19", :require => "ruby-debug"

group :assets do
  gem "sass-rails"
  gem "coffee-rails"
  gem "uglifier"
  gem 'compass', '~> 0.12.alpha'
end

group :development do
  gem "heroku_san"
end

group :test do
  gem "factory_girl_rails"
  gem "timecop"
end

group :development, :test do
  gem "forgery"
  gem "rspec-rails"
  gem "therubyracer", :require => 'v8'
end
