Rails.application.routes.draw do
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:create]

  get 'signup' => 'users#new', as: 'signup'

  root 'movies#index'
  
  resources :movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
