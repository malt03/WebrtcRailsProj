Rails.application.routes.draw do
  post '/webrtc', :to => 'webrtc#send_message'
  post '/hoge', :to => 'hoge#hoge'
  resources :messages, only: [:show]
end
