Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/regions'
  get 'posts/select_prefectures'
  get 'end_users/select_prefectures'
  devise_for :end_users
  devise_for :admin_users

  namespace :admin do
    resources :admin_users, only: [:index]
  end

  resources :home, only: [:index]
  resources :post_tags, only: [:destroy]
  resources :tags, only: [:show]
  resources :post_images, only: [:destroy]
  resources :prefectures, only: [:show]
  resources :municipalities, only: [:show]
  resources :clips, only: [:show]
  resources :visits, only: [:show]
  resources :relationships, only: [:create, :destroy]
  resources :end_users, only: [:show]
  resources :posts, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :visits, only: [:destroy, :create]
    resources :clips, only: [:destroy, :create]
  end
  resources :end_users do
    member do
      get :following, :followers
    end
  end
end
