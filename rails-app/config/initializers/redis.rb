REDIS_CONFIG = YAML.load(ERB.new(File.read("#{Rails.root}/config/redis.yml")).result)[Rails.env]
Rails.application.config.cache_store = :redis_store, {
    host: REDIS_CONFIG['host'],
    port: REDIS_CONFIG['port'],
    db: REDIS_CONFIG['db']
  }
