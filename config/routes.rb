Rails.application.routes.draw do
  resources :requests
  resources :order_items
  resources :orders
  resources :customers
  get 'pdv/index'
  resources :products
  root 'welcome#index'
  get '/welcome', to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
