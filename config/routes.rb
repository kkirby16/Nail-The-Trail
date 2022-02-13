Rails.application.routes.draw do
  resources :hikes do
    resources :reviews
  end
  resources :users do
    resources :reviews, only: [:show]
  end

  resources :reviews

  get "/auth/facebook/callback", to: "sessions#create"
  root "application#home"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create", as: "login-post"
  get "/signup", to: "users#new", as: "signup"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/home", to: "users#welcome", as: "welcome"
  get "/profile/:id", to: "users#show", as: "profile"
  delete "/hikes/:hike_id/reviews/:id", to: "reviews#destroy", as: "delete"
  get "/most_active", to: "users#most_active_user", as: "most_active"

  #when facebook sends that callback to the route /auth/facebook/callback, we need to route that to the right controller action.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
