source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bootstrap-sass"
gem "brakeman", require: false
gem "coffee-rails", "~> 4.2"
gem "eslint-rails"
gem "font-awesome-rails"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "lorem_ipsum_amet"
gem "puma", "~> 3.0"
gem "rails", "~> 5.0.4"
gem "rails_best_practices"
gem "reek"
gem "rubocop", "0.49.1", require: false
gem "rubocop-checkstyle_formatter", require: false
gem "sass-rails", "~> 5.0"
gem "scss_lint", require: false
gem "scss_lint_reporter_checkstyle", require: false
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "byebug", platform: :mri
  gem "sqlite3"
end

group :development do
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
