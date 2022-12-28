source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'active_storage_validations', '~>0.8.2'
gem 'bcrypt', '~> 3.1.13'
gem 'bootsnap', require: false
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'bootstrap-will_paginate', '~>1.0.0'
gem 'faker', '~>2.1.2'
gem 'image_processing', '~>1.9.3'
gem 'importmap-rails'
gem 'jbuilder'
gem 'mini_magick', '~>4.9.5'
gem 'net-http', '~> 0.3.2'
gem 'pg', '~>1.1.4'
gem 'puma', '~>5.0'
gem 'rails', '~>7.0.4'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'will_paginate', '~>3.1.8'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'listen', '~> 3.7', '>= 3.7.1'
  gem 'spring', '~>2.1.0'
  gem 'spring-watcher-listen', '~>2.0.1'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'guard', '~>2.15.0'
  gem 'guard-minitest', '~>2.4.6'
  gem 'minitest', '~>5.11.3'
  gem 'minitest-reporters', '~>1.5.0'
  gem 'rails-controller-testing', '~>1.0.4'
  gem 'ruby_gntp', '~> 0.3.4'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'aws-sdk-s3', '1.46.0', require: false
  # gem 'pg', '~>1.1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
