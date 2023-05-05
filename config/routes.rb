Rails.application.routes.draw do
  devise_for :admins
  resources :bookings
  resources :customers

  root to: "bookings#new"

  devise_scope :admin do
    get 'sign_in', to: 'devise/sessions#new'
  end
end
