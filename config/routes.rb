Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :lessons do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :destroy] do
    member do
      patch :accept
      patch :reject
    end
    resources :reviews, only: [:new, :create, :edit, :update]
    resources :tasks, only: [:new, :create, :edit, :update]
  end

  resources :reviews, only: [:destroy]
  resources :tasks, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
