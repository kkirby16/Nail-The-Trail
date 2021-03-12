Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.credentials.facebook[:app_id], Rails.application.credentials.facebook[:app_secret]
end #this will set up our omniauth middleware to go to the right spot.
