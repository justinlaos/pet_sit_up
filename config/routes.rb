Rails.application.routes.draw do
  devise_for :admins
  resources :bookings
  resources :customers

  root to: "bookings#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
