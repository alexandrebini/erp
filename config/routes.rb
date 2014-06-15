Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :customers
  resources :cities, only: :index
end