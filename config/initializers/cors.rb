Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    valid_origins = ['localhost:3000', 'localhost:3001']
    valid_origins.append(ENV['FRONTEND_DOMAIN']) if ENV['FRONTEND_DOMAIN'].present?

    origins(*valid_origins)

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose:  ['access-token', 'expiry', 'token-type', 'uid', 'client']
  end
end
