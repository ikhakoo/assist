Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :assistants
  resources :bookings
  resources :services
end
