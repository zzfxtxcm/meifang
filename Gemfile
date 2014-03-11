source 'http://ruby.taobao.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'
gem 'bootstrap-sass', '2.2.1'
gem 'haml', '4.0.5'

# 会员
gem 'devise', github: 'plataformatec/devise', branch: 'lm-rails-4-1'
gem 'devise-encryptable'

# 后台页面
gem 'activeadmin',         github: 'gregbell/active_admin'
gem 'ransack',             github: 'ernie/ransack'
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'formtastic',          github: 'justinfrench/formtastic'

# 权限
gem 'cancancan', '1.7'

# 多层
gem 'ancestry'

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'pry-rails'
  gem 'guard-livereload'
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'simplecov'
  gem 'email_spec'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.15.1'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
