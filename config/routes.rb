Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :customers
  resources :sales
  resources :products
  resources :cities, only: :index
end