Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs 
  resources :favorites, only: [:create, :destroy]
  devise_for :users
end
