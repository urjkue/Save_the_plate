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
  get "/profile/bookings", to: "profile#bookings", as: :profile_bookings
  # get "/favourites/:id",to: "favourites#show"
  # get "/cart",to: "carts#index", as: :cart
  get "cart/new/:id",to: "carts#new", as: :cart_new
  get "cart/create/:id",to: "carts#create",as: :cart_create
  get "cart/payment/:id",to: "carts#payment",as: :cart_payment
  # get "cart/edit",to: "carts#edit"
  # get "/cart/update",to: "carts#update"
  # get "/cart/destroy",to: "carts#destroy"
  post "/cart/book/:id",to: "carts#show", as: :cart_show

  #test

   # params id
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
