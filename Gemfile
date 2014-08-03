source 'https://rubygems.org'

ruby '2.1.2'

gem 'middleman', '~>3.3'
gem 'middleman-blog', '~> 3.5'

# For feed.xml.builder
gem 'builder', '~> 3.0'

gem 'rack-contrib', '~> 1.1'

gem 'foreman'
gem 'puma'

gem 'foundation', '~> 1.0.4'

gem 'newrelic_rpm'

group :assets do
    gem 'therubyracer', '~> 0.12' unless RUBY_PLATFORM.match(/darwin|mswin/)
end

group :development do
    # Live-reloading plugin
    gem 'middleman-livereload', '~> 3.3'
end
