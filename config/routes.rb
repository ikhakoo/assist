Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :assistants, only: [:new, :create, :edit, :show] do
  	resources :services, only: [:new, :create, :edit, :show] do 
  		resources :bookings, only: [:new, :create, :edit, :show]
  end
end
end
