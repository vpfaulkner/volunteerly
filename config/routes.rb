Rails.application.routes.draw do
  root 'assignments#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
