Rails.application.config.middleware.use Omniauth::Builder do
    provider :github
      
end    