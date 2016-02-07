Rails.application.routes.draw do
  devise_for :admins
  root 'assignments#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  resources :assignments

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
