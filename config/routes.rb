Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: [:index,:new,:ctreate]
  # resources :users
  # resources :comments
  # resources :brands
  resources :category_parents
  # resources :categories
  # resources :category_children
end
