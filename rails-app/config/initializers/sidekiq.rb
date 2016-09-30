Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{REDIS_CONFIG['host']}:#{REDIS_CONFIG['port']}/12" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{REDIS_CONFIG['host']}:#{REDIS_CONFIG['port']}/12" }
end
