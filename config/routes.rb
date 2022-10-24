Rails.application.routes.draw do
  resources :admins, except: [:show, :patch]
  resources :drivers, only: [:index, :show, :create]
  resources :buses
  resources :bookings
  resources :customers
  post "/login", to: "sessions#create_session"
  delete "/logout", to: "sessions#logout"
  get '/me', to: "application#me"
end
