Rails.application.routes.draw do
  root 'assignments#index'

  resources :teams do
    resources :memberships
  end
  resources :assignments

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  devise_for :admins

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
