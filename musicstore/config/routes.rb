Rails.application.routes.draw do\

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root 'pages#home'

  get 'pages/graphs'

  get 'pages/home'

  get 'pages/inventory'

  get 'pages/orders'

  get 'pages/reports'

  resources :orders
  resources :schedules
  resources :products
  resources :employees
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
