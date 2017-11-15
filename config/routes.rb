Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :restaurants, only: [:new, :create, :edit, :destroy]
  end
  resources :reviews
  resources :restaurants
  root to: 'welcome#index'
end
