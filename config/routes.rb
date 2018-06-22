Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :restaurants do
    resources :items
    resources :bills, only: [:new, :create]
  end

  resources :bills, only: [:edit, :update, :show] do
    resources :orders, only: [:new, :create, :index]
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index, :edit, :update]

  resources :orders, only: [:edit, :update] do
    resources :order_items, only: [:create]
    resources :payments, only: [:new, :create]
  end

  resources :order_items, only: [:edit, :update, :destroy]

  get '/my-orders', to: "dashboard#my_orders"
  get '/my-restaurants', to: "dashboard#my_restaurants"
  get '/order-requests', to: "dashboard#order_requests"

end
