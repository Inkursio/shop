source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.6'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

gem 'bootstrap', '~> 5.1.3'
gem 'faker'
gem 'jquery-rails'
gem 'oj'
gem 'sassc-rails', '>= 2.1.0'

gem 'ancestry'
gem 'breadcrumbs_on_rails'
gem 'meta-tags'

gem 'uglifier'

gem 'activeadmin'
gem 'devise'

group :development, :test do
  gem 'database_cleaner-active_record'
  gem 'database_cleaner-redis'
  gem 'factory_bot'
  gem 'pg'
  gem 'pry', '~> 0.13.1'
  gem 'rails-controller-testing'
  gem 'rb-readline'
  gem 'rspec-json_expectations'

  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'webdrivers'

  gem 'db-query-matchers'
  gem 'rubocop', require: false
  gem 'shoulda-matchers', '~> 5.0'

  gem 'json_spec'
  gem 'launchy'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
