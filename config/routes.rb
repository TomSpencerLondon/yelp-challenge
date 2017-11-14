Rails.application.routes.draw do
  resources :restaurants
  root to: 'welcome#index'
end
