Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Listings-Routen: index, show, new, create
  resources :listings, only: [:index, :show, :new, :create]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Root: Startseite die alle Listings zeigen soll
  root to: "listings#index"
end
