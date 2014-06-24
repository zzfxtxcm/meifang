redis_server = Rails.application.secrets.redis_server
redis_port = Rails.application.secrets.redis_port
redis_db_num = Rails.application.secrets.redis_db_num
redis_namespace = Rails.application.secrets.redis_namespace

sidekiq_url = 'redis://' + redis_server + ':' + redis_port + '/' + redis_db_num

Sidekiq.configure_server do |config|
  config.redis = { url: sidekiq_url, namespace: redis_namespace }
end

Sidekiq.configure_client do |config|
  config.redis = { url: sidekiq_url, namespace: redis_namespace }
end
