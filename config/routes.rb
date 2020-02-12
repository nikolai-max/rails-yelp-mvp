Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"

  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # get "restaurants/:id", to: "restaurants#show"

  resources :restaurants, except: [:destroy, :update, :edit] do
    resources :reviews, only: [:new, :create]
  end
  # get "restaurants/:id/reviews/new", to: "reviews#new"
  # post "restaurants/:id/reviews", to: "reviews#create"
end
