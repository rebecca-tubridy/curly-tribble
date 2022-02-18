Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  # root "users#index"
  root :to => "homepage#index"
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users 
   


  # get '/articles', to: 'articles#new' 
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles
end