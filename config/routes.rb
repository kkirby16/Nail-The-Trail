Rails.application.routes.draw do
  resources :hikes
  resources :reviews
  resources :users
  root "application#home"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create", as: "login-post"
  get "/signup", to: "users#new", as: "signup"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/home", to: "users#welcome", as: "welcome"
  get "/profile/:id", to: "users#show", as: "profile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
