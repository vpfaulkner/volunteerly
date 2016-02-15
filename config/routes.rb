Rails.application.routes.draw do
  root 'assignments#index'

  resources :teams do
    resources :memberships
  end
  resources :assignments do
    get 'subs', to: 'assignments#subs'
    post 'subs', to: 'assignements#request_sub'
  end
  resources :user, controller: 'users'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  devise_for :admins

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
