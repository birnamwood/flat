Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/regions'
  devise_for :end_users
  devise_for :admin_users

  namespace :admin do
    resources :admin_users, only: [:index]
  end

  resources :home, only: [:index]
  resources :posts, only: [:new, :create, :edit, :update, :show]
  resources :prefectures, only: [:show]
end
