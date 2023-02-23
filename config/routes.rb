Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %i[index show new create]
  get 'restaurant/:id', to: 'reviews#index', as: :reviews
  get 'restaurant/:id', to: 'reviews#new'
  post 'restaurant/:id', to: 'reviews#create'
end
