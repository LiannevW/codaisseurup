Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :photos, only: [:destroy]
  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]

  resources :events do
    resources :registrations, only: [:create]
  end

  namespace :api do
    resources :events do
      resources :registrations, only: [:create, :update, :destroy]
    end
  end

end
