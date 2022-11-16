Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[index new show create] do
    resources :reviews, only: %i[new create show index]
  end
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:id/review', to: 'reviews#create'

  # Defines the root path route ("/")
  # root "articles#index"
end
