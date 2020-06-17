Rails.application.routes.draw do
  resources :origins
  root 'welcome#index'
  
  resources :payment_methods
  resources :requests
  resources :order_items
  resources :orders
  resources :customers
  resources :products

  get '/welcome', to: 'welcome#index'

  get '/pdv', to: 'pdv#index'
  get 'pdv/get_products', to: 'pdv#get_products'
  post 'pdv/create_order', to: 'pdv#create_order'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
