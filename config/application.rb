class Application < Rails::Application
  # Initialize configuration defaults for originally generated Rails version.
  config.load_defaults 6.1
  config.autoload_paths += %W(#{config.root}/lib)
  config.assets.paths << Rails.root.join("app", "assets", "fonts")

end