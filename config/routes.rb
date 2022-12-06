Rails.application.routes.draw do
  root to: 'inventory_kegs#index'
  
  resources :inventory_kegs
  resources :archives, only: [:index]
  resources :taps
  resources :users, only: [:create, :show]

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
