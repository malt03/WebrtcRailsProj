Rails.application.routes.draw do
  post '/webrtc', :to => 'webrtc#send_message'
  resources :messages, only: [:show]
end
