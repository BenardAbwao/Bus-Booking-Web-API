Rails.application.routes.draw do
  resources :admins
  resources :drivers, only: [:index, :show, :create]
  resources :buses
  resources :bookings
end
