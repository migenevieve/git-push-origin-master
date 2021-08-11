Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end
end


  # resources :restaurants, only: [:index, :show, :new, :create]
  # see the list of all restaurants index
  # GET "/restaurants"

  # add a new restaurant,redirected to the show view of that new restaurant
  # GET "restaurants/new"
  # POST "restaurants"

  # can see the details of a restaurant, with all the reviews
  # GET "restaurants/38"

  # A visitor can add a new review to a restaurant

  # GET "restaurants/38/reviews/new"
  # you will have to use nested resources.
  # POST "restaurants/38/reviews"
