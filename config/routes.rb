Rails.application.routes.draw do
  root "users#new"
  # start new session
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy", as: "logout"
  post "/login", to: "sessions#create"  
  get "/home", to: "sessions#index", as: "home"
  get "/fetch", to: "fetch#index", as: "fetch"
  resources :sessions
  resources :users
end
