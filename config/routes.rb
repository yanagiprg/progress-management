Rails.application.routes.draw do
  root 'home#index'
  resource :home
  resource :session, only: [:new, :create, :destroy]
  resources :users
  resources :diaries
  resources :members
end
