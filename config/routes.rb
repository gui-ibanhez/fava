Rails.application.routes.draw do
  resources :payment_methods
  resources :requests
  resources :order_items
  resources :orders
  resources :customers
  get '/pdv', to: 'pdv#index'
  resources :products
  root 'welcome#index'
  get '/welcome', to: 'welcome#index'
  get 'pdv/get_items', to: 'pdv#get_items'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
