Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'plays#index'

  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resources :users
  resources :plays do
    resources :bookings
  end
  resource :session
end
