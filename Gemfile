source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'faker'
gem 'therubyracer'
gem 'bootstrap-sass'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Added at 2018-07-26 20:06:06 -0600 by sabrinarobinson:
gem "factory_bot_rails", "~> 4.10"

# Added at 2018-07-26 20:08:58 -0600 by sabrinarobinson:
gem "launchy", "~> 2.4"

# Added at 2018-07-26 20:09:10 -0600 by sabrinarobinson:
gem "faraday", "~> 0.15.2"

# Added at 2018-07-26 20:10:01 -0600 by sabrinarobinson:
gem "figaro", "~> 1.1"

# Added at 2018-07-27 09:13:22 -0600 by sabrinarobinson:
gem "active_model_serializers", "~> 0.10.7"
