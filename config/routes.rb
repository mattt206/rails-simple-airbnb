Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "flats#index"

  resources :flats
end
