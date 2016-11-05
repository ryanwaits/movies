Rails.application.routes.draw do
  get 'reviews/new'

  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:create]

  get 'signup' => 'users#new', as: 'signup'

  root 'movies#index'
  
  resources :movies do
    resources :reviews, only: [:new, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
