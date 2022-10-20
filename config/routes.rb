Rails.application.routes.draw do
  resources :drivers, only: [:index, :show]
end
