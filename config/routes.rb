Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :heropowers, only: :create
  resources :heros, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
end
