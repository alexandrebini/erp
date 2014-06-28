Rails.application.routes.draw do
  resources :customers
  resources :sales
  resources :products
  resources :cities, only: :index
end