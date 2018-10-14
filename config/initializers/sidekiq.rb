if Rails.env.production?
  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://:6379" }
  end

  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://:6379" }
  end
end