Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  root to: 'welcome#index'
end
