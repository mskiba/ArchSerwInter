source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'heroku'
gem 'taps', :git => "git://github.com/ricardochimal/taps.git"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# polskie znaki
gem 'string_case_pl'

gem 'mongoid'

gem 'therubyracer'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

# paperclip dla załączników
#gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

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

# autoryzacja przez githuba
gem 'omniauth'
gem "omniauth-github"

# Autoryzacja
gem 'cancan'

gem "less-rails", :group => :development
gem "less-rails-bootstrap"
gem "simple_form"
gem "wirble", :group => :development
gem "hirb", :group => :development
gem "therubyracer"

group :production, :staging do
	  gem "pg"
end

group :development, :test do
	  gem "sqlite3-ruby", "~> 1.3.0", :require => "sqlite3"
end

gem 'thin'
