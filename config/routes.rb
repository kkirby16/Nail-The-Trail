Rails.application.routes.draw do
  resources :hikes do
    resources :reviews
  end
  resources :users do
    resources :reviews, only: [:show]
  end

  get "/auth/facebook/callback", to: "sessions#create"
  root "application#home"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create", as: "login-post"
  get "/signup", to: "users#new", as: "signup"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/home", to: "users#welcome", as: "welcome"
  get "/profile/:id", to: "users#show", as: "profile"
  #need something like get "/users/:id/reviews" which would be a nested resource index.
  #need something like get "/users/1/reviews" which would be a url for my nested resource index.
  #get "/hikes_by_city", to: "hikes#hikes_by_city", as "hikes_by_city" #this is the route that takes us to the page showing hikes by city
  #when facebook sends that callback to the route auth/facebook/callback, we need to route that to the right controller action.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
