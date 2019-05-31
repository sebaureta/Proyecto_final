# Routes
Rails.application.routes.draw do
  resources :categories
  get 'orders/create'

  resources :admins do
  end

  resources :products do
    resources :orders, only: :create
  end

  resources :orders do
  end

  resources :categories do
  end

  resources :product_categories do
  end

  root to: 'products#index'
  devise_for :users

  concern :paginatable do
    get '(products/:page)', action: :index, on: :collection
  end
  resources :products, concerns: :paginatable
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
