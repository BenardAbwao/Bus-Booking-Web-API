Rails.application.routes.draw do
  resources :admins, except: [:show, :patch]
  resources :drivers, only: [:index, :show, :create]
  resources :buses
  resources :bookings
end
