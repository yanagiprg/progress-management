Rails.application.routes.draw do
  get 'sessions/new'
  root 'home#index'
  resource :home
  resources :diaries
  resources :members
  resource :session, only: [:new, :create, :destroy]

end
