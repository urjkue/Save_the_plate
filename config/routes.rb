Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/localisation",to: "pages#localisation"
  get "/baskets", to: "basket#index"
  get "/basket/:id",to: "basket#show", as: :basket
  get "/discover",to: "pages#discover"
  get "/favourites",to: "favourites#index"
  get "favourites/new/:id",to: "favourites#new"
  post "/favourites/create",to: "favourites#create"
  get "/favourites/edit",to: "favourites#edit"
  get "/favourites/update",to: "favourites#update"
  get "/favourites/destroy",to: "favourites#destroy"
  get "/favourites/:id",to: "favourites#show"
  get "/cart",to: "carts#index"
  get "cart/new",to: "carts#new"
  post "cart/create",to: "carts#create"
  get "cart/edit",to: "carts#edit"
  get "/cart/update",to: "carts#update"
  get "/cart/destroy",to: "carts#destroy"
  get "/cart/show:id",to: "carts#show"

  #test

   # params id
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
