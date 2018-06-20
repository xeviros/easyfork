Rails.application.routes.draw do
  get 'bills/new'
  get 'bills/edit'
  get 'bills/show'
  get 'bills/create'
  get 'bills/update'
  devise_for :users
  root to: 'pages#home'

  resources :restaurants do
    resources :items
    resources :bills, only: [:new, :create]
  end

  resources :bills, only: [:edit, :update, :show] do
    resources :orders, only: [:new, :create, :index, :edit, :update]
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index, :edit, :update]

  resources :orders, only: [] do
    resources :order_items, only: [:create]
  end

  get '/my-orders', to: "dashboard#my_orders"
  get '/my-restaurants', to: "dashboard#my_restaurants"
  get '/order-requests', to: "dashboard#order_requests"

end
