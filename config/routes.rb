Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  root :to => "homepage#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users 
  resources :articles
end