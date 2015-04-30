Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :assistants do
  	resources :services do
  		resources :bookings
  end
end
end
