Rails.application.routes.draw do
  devise_for :users
  root to: "businesses#index"
  resources :businesses
  get "/home",to: "pages#home", as: :home
  # get "/baskets", to: "basket#index", as: :baskets
  get "/basket/:id",to: "basket#show", as: :basket
  # get "/browse",to: "pages#discover", as: :discover
  get "/favourites",to: "favourites#index", as: :favourit
  get "favourites/new/:id",to: "favourites#new", as: :favourit_new
  get "/favourites/create/:id",to: "favourites#create", as: :favourit_create
  get "/favourites/edit",to: "favourites#edit"
  get "/favourites/update",to: "favourites#update"
  get "/favourites/destroy/:id",to: "favourites#destroy", as: :favourit_destroy
  get "/profile", to: "profile#index", as: :profile
  # get "/favourites/:id",to: "favourites#show"
  get "/cart",to: "carts#index", as: :cart
  # get "cart/new",to: "carts#new"
  # post "cart/create",to: "carts#create"
  # get "cart/edit",to: "carts#edit"
  # get "/cart/update",to: "carts#update"
  # get "/cart/destroy",to: "carts#destroy"
  # get "/cart/show:id",to: "carts#show"

  #test

   # params id
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
