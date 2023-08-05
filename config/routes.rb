Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :hospitals, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :events, only: [:index, :show, :new, :update, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy]

end
