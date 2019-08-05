Rails.application.routes.draw do
  root 'home#index'
  resource :home
  resource :session, only: [:new, :create, :destroy]
  resources :users
  resources :members do
    resources :diaries
  end
  
end
