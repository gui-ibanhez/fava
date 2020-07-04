Rails.application.routes.draw do
  get '/welcome', to: 'welcome#index'

  get '/pdv', to: 'pdv#index'
  get 'pdv/get_products', to: 'pdv#get_products'
  post 'pdv/create_order', to: 'pdv#create_order'
  get 'order_items/list_items', to:'order_items#list_items'

  root 'welcome#index'
  
  resources :expenses
  resources :expense_kinds
  resources :payment_methods
  resources :requests
  resources :order_items
  resources :orders
  resources :customers
  resources :products
  resources :origins

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
