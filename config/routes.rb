Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/regions'
  devise_for :end_users
  devise_for :admin_users

  namespace :admin do
    resources :admin_users, only: [:index]
  end

  resources :home, only: [:index]
  get 'posts/select_prefectures'
  resources :posts, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :visits, only: [:destroy, :create]
    resources :clips, only: [:destroy, :create]
  end
  resources :post_tags, only: [:destroy]
  resources :post_images, only: [:destroy]
  resources :prefectures, only: [:show]
  resources :municipalities, only: [:show]
  resources :end_users, only: [:show]
  resources :end_users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
