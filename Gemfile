source 'https://rubygems.org'

ruby '2.0.0'

gem 'middleman', '~>3.1.6'

gem 'foreman'
gem 'puma'

group :assets do
    gem 'therubyracer', '~> 0.12' unless RUBY_PLATFORM.match(/darwin|mswin/)
end

group :development do
    # Live-reloading plugin
    gem 'middleman-livereload', '~> 3.1.0'

    # For faster file watcher updates on Windows:
    gem 'wdm', '~> 0.1.0', :platforms => [:mswin, :mingw]
end