Rails.application.routes.draw do
  # root "users#index"
  root :to => "homepage#index"
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  
  resources :users

 
  # resources :logins
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles
end