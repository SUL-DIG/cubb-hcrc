source 'https://rubygems.org'
source 'http://sul-gems.stanford.edu'

gem 'rails', '4.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


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

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
gem 'blacklight'

gem "unicode", :platforms => [:mri_18, :mri_19]
gem "devise"
gem "devise-guests", "~> 0.3"
gem "bootstrap-sass"
gem 'blacklight_range_limit', :git => 'https://github.com/projectblacklight/blacklight_range_limit.git'

# gems necessary for capistrano deployment
group :development,:deploy do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
#  gem 'rvm-capistrano'
#  gem 'lyberteam-devel', '>=1.0.0'
#  gem 'lyberteam-gems-devel', '>=1.0.0'
#  gem 'net-ssh-krb'
  gem 'lyberteam-capistrano-devel', '3.0.0.pre1'
end
#gem 'gssapi', :git => 'https://github.com/cbeer/gssapi.git'

gem 'protected_attributes'
