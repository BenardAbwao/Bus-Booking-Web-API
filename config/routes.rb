Rails.application.routes.draw do
  resources :drivers, only: [:index, :show, :create]
  resources :buses
  resources :bookings
end
