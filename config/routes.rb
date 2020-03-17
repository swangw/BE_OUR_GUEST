Rails.application.routes.draw do
  devise_for :hosts
  root to: 'spaces#index'
  resources :spaces, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show]

  resources :hosts, only: [:new, :create] do
    resources :spaces
    resources :bookings, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
