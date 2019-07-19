Rails.application.routes.draw do
  resources :diaries
  resource :home
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
