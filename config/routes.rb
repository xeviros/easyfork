Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants do
    resources :items
    resources :bills, only: [:new, :create]
  end

  resources :reviews, only: [:index, :edit, :update,]
  resources :bills, only: [:edit, :update] do
    resources :orders
    resources :reviews, only: [:new, :create]
  end

  get '/my-orders', to: "dashboard#my_orders"
  get '/my-restaurants', to: "dashboard#my_restaurants"
  get '/order-requests', to: "dashboard#order_requests"

end
