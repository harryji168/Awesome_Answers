Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:9999', 'localhost:5500'  #whistelist domains
      resource '*', headers: :any, methods: [:get, :post, :patch, :put]
    end
  end