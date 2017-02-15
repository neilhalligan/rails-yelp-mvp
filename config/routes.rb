Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "restaurants#index"
  # GET "restaurants/:id", to: "restaurants#show"
  # GET "restaurants/new", to: "restaurants#new"
  # POST "restaurants", to: "restaurants"
  # get '/restaurants/:restaurant_id/reviews/new', to: "reviews#show"
   # /restaurants/:restaurant_id/reviews/new

  resources :restaurants, only:[:show, :new, :create, :index] do
    resources :reviews, only: [:new, :create]
    #   member do
    #     get 'new', to: "reviews#new"
    #   end

    # member do
    #   get 'reviews/new', to: "reviews#new"
    # end
  end
end
