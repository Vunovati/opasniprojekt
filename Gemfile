source 'http://rubygems.org'

gem 'rails', '3.2.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

#gem "execjs"

gem "therubyracer", :require => 'v8'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  
  gem 'twitter-bootstrap-rails'
  # gem 'bootstrap-sass', '2.0.0'
end

gem 'jquery-rails'
gem 'formtastic'
gem 'formtastic-bootstrap'
gem 'bootstrap-will_paginate'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.1'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  gem 'sqlite3'
  gem 'gollum'
  gem 'RedCloth'
  gem 'annotate', '2.4.1.beta1'
  gem 'faker', '0.3.1'
end


gem "rspec-rails", :group => [:test, :development]
# Test gems on Linux
group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'factory_girl_rails', '1.4.0'
  gem 'capybara', '1.1.2'
  gem 'guard-rspec', '0.5.5'
  gem 'rb-inotify', '0.8.8'
  gem 'libnotify', '0.5.9'
end 

group :production do
  gem 'pg', '0.12.2'
end
