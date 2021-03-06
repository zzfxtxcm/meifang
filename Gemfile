# coding: utf-8
source 'http://ruby.taobao.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
gem 'bootstrap-sass', '2.3.2'
gem 'haml', '4.0.5'

# 会员
gem 'devise', '3.2.4'
gem 'devise-encryptable', '0.1.2'

# 后台页面
gem 'activeadmin',         github: 'gregbell/active_admin'
gem 'ransack',             github: 'ernie/ransack'
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'formtastic',          github: 'justinfrench/formtastic'

# 权限
gem 'cancancan', '1.7'

# 多层
gem 'ancestry', '2.0.0'

# 表单
gem 'simple_form', '3.0.2'

# 编辑器
gem 'ckeditor', '4.0.11'

# 图片上传
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '3.7.0'

# 汉字转拼音
gem 'ruby-pinyin', '0.4.0'

# 分页
gem 'will_paginate', '3.0.5'
gem 'bootstrap-will_paginate', '0.0.10'

# 搜索
gem 'sunspot_rails', '2.1.0'
gem 'sunspot_solr', '2.1.0'
gem 'progress_bar', '1.0.0'

# 分析网页结构
gem 'nokogiri', '1.6.1'

# 面包屑
gem "breadcrumbs_on_rails", '2.3.0'

# 计划任务
gem "sidekiq", '3.1.4'
gem "sidetiq", '0.6.1'
gem 'sinatra'

# redis
gem 'redis'
# Redis 命名空间
gem 'redis-namespace'
# 将一些数据存放入 Redis
gem "redis-objects"

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'pry-rails', '0.3.2'
  gem 'guard-livereload', '2.1.1'
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'faker', '1.3.0'
  gem 'childprocess', '0.3.6'
  gem 'simplecov', '0.8.2'
  gem 'email_spec', '1.5.0'
  gem 'net-ssh', '2.9.0'
  gem 'capistrano', '3.1.0'
  gem 'capistrano-rails', '1.1.1'
  gem 'capistrano-bundler', '1.1.2'
  gem 'capistrano-rvm', '0.1.1'
  gem 'capistrano-sidekiq', '0.3.3'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :production do
  gem 'pg', '0.15.1'
  gem 'unicorn'
  gem 'unicorn-rails'
  gem 'unicorn-worker-killer'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
