Rails.application.routes.draw do
  devise_for :hosts
  root to: 'spaces#index'

  get 'bookings/search', to: 'bookings#search'

  resources :spaces, only: [:show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :destroy] do
    resource :confirmation, only: [:edit, :update]
  end

  resources :hosts, only: [:new, :create] do
    resources :spaces
    resources :bookings, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
