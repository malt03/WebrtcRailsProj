WebrtcRails.configure do |config|
  # config.user_model_class = 'User'
  # config.fetch_user_by_token_method = :fetch_by_token
  # config.user_id = :id
  config.daemon_delegate = 'WebrtcDelegate'
end
