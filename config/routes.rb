Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'test_maps', to: 'pages#test_maps', as: :test_maps

  resources :restaurants do
    resources :items
    resources :images
    resources :bills, only: [:new, :create]
  end

  resources :bills, only: [:edit, :show, :update] do
    resources :orders, only: [:new, :create, :index]

  end
  resources :reviews, only: [:index, :edit, :update]

  resources :orders, only: [:edit, :update, :destroy] do
    resources :order_items, only: [:create]
    resources :payments, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :order_items, only: [:edit, :update, :destroy]

  get '/my-orders', to: "dashboard#my_orders"
  get '/my-restaurants', to: "dashboard#my_restaurants"
  get '/my-orders-requests', to: "dashboard#my_orders_requests"
  get '/my-profile', to: "user#edit"

end
