Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dogsittings, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [ :index, :update, :edit, :destroy ]

  resources :pets, only: [ :create, :new, :destroy ]

  get "/profile", to: "pages#profile"

  namespace :walker do
    resources :bookings, only: :index
  end
end
