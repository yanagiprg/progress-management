Rails.application.routes.draw do
  root 'home#index'
  resource :home
  resources :diaries
  resources :members

end
