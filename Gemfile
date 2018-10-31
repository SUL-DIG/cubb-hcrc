source 'https://rubygems.org'

gem 'rails', '~> 4.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '~> 0.3.0'


# Gems used only for assets and not required
# in production environments by default.
#group :assets do
  gem 'sass-rails', '~> 4.0.2'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
#end

gem 'jquery-rails'
gem 'rubyzip', '~> 1.2.2'

gem 'blacklight', '~> 4.9'

gem "unicode", :platforms => [:mri_18, :mri_19]
gem "devise"
gem "devise-guests", "~> 0.3"
gem "bootstrap-sass", '~> 2.3.2.2'
gem 'blacklight_range_limit', '~> 2.1'

# gems necessary for capistrano deployment
group :deploy do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'dlss-capistrano'
  gem 'net-ssh', '~> 4.0'
end

group :development do
  gem 'sqlite3'
  gem 'solr_wrapper'
end

gem 'protected_attributes'
