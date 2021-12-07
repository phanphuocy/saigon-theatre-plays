Rails.application.routes.draw do
  root 'plays#index'
  resources :plays do
    resources :bookings
  end
end
