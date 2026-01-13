Rails.application.routes.draw do
  # Devise für User-Authentifizierung
  devise_for :users

  # Listings-Routen: index, show, new, create
  resources :listings, only: [:index, :show, :new, :create]

  # Bookings-Routen: nur create (für Buchungsformular)
  resources :bookings, only: [:create]

  # Reveal health status auf /up
  # Gibt 200, wenn App ohne Exceptions bootet, sonst 500
  get "up" => "rails/health#show", as: :rails_health_check

  # Root-Path: Startseite zeigt alle Listings
  root to: "listings#index"
end
