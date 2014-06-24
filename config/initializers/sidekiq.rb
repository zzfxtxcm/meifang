require "redis"
require "redis-namespace"
require "redis/objects"
require "uri"

redis_server = Rails.application.secrets.redis_server
redis_port = Rails.application.secrets.redis_port
redis_db_num = Rails.application.secrets.redis_db_num
redis_namespace = Rails.application.secrets.redis_namespace

Redis::Objects.redis = Redis.new(host: redis_server, port: redis_port)

sidekiq_url = URI.parse(ENV["REDISTOGO_URL"] || "redis://#{redis_server}:#{redis_port}/#{redis_db_num}")

Sidekiq.configure_server do |config|
  config.redis = { url: sidekiq_url, namespace: redis_namespace }
end

Sidekiq.configure_client do |config|
  config.redis = { url: sidekiq_url, namespace: redis_namespace }
end
