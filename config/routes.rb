Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, only:[:index,:new,:ctreate,:show] do
    member do
      get 'confirm_buy'
    end
  end

  resources :profiles, only: [:show,:new]
  # resources :users
  # resources :comments
  # resources :brands
  resources :category_parents
  # resources :categories
  # resources :category_children
  resources :users,  only:[:new]
end
