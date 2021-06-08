Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lessons do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:show, :destroy] do
    resources :reviews, only: [:create, :edit, :update]
    resources :tasks, only: [:create, :edit, :update]
  end
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
