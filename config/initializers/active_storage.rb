Rails.application.reloader.to_prepare do
  ActiveStorage::Current.host = 'http://localhost:3000' if Rails.env.development? || Rails.env.test?
end
