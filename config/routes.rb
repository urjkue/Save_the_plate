Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "localisation",to: "pages#localisation"
  get "home",to: "pages#home"
  get "basket/#{id}",to: "basket#show"
  get "discover",to: "pages#discover"
  get "favourites",to: "favourites#index"
  get "favourites/new",to: "favourites#new"
   # params id
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
