Rails.application.routes.draw do
  root 'products#index'
  resources :products
  resources :users
  resources :comments
  resources :brands
  resources :category_pars
  resources :category
  resources :category_child
end
