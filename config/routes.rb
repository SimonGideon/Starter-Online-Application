Rails.application.routes.draw do
  root "users#new"
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy", as: "logout"
  post "/login", to: "sessions#create"  
  get "/home", to: "sessions#index", as: "home"
  get "/fetch", to: "fetch#index", as: "fetch"
  resources :users, only: [:new, :create]
    # catch udndefined urls
    match "*path", to: "application#render_404", via: :all
end
