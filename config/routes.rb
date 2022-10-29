Rails.application.routes.draw do
  resources :seats
  resources :admins, except: [:show, :patch]
  resources :drivers
  resources :buses
  resources :bookings
  resources :customers
  post "/login", to: "sessions#create_session"
  delete "/logout", to: "sessions#logout"
  get '/me', to: "application#me"
end
