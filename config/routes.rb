Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/edit'
  get 'items/new'
  get 'items/index'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/edit'
  devise_for :users
  root to: 'pages#home'

  resources :restaurants do
    resources :items, only: [:new, :crete]
    resources :orders, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end

  resources :items, only: [:edit, :update, :destroy]
  resources :orders, only: [:edit, :update, :destroy] do
    resources :order_items
  end

  get '/my-orders', to: "dashboard#my_orders"
  get '/my-restaurants', to: "dashboard#my_restaurants"
  get '/order-requests', to: "dashboard#order_requests"

end
