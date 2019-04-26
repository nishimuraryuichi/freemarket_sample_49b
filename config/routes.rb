Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: [:index]
  # resources :users
  # resources :comments
  # resources :brands
  # resources :category_pars
  # resources :categorys
  # resources :category_childs
end
