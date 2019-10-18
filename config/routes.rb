Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/regions'
  get 'posts/select_prefectures'
  get 'end_users/select_prefectures'
  devise_for :end_users, controllers: { omniauth_callbacks: 'end_users/omniauth_callbacks' }
  devise_for :admin_users
  
  namespace :admin do
    get 'end_users/select_prefectures'
    get 'posts/select_prefectures'
    get 'posts/checked/:id', to: 'posts#checked'
    resources :admin_users, only: [:index]
    resources :tags, only: [:show]
    resources :post_tags, only: [:destroy]
    resources :post_images, only: [:destroy]
    resources :comments, only: [:create, :destroy]
    resources :inquiries, only: [:index, :show]
    resources :replies, only: [:create]
    resources :posts, only: [:index, :edit, :update, :show, :destroy]
    resources :end_users, only: [:index, :show, :edit, :update] do
      member do
        get :following, :followers
      end
    end
  end

  resources :home, only: [:index]
  resources :post_tags, only: [:destroy]
  resources :tags, only: [:show]
  resources :post_images, only: [:destroy]
  resources :comments, only: [:create, :destroy]
  resources :prefectures, only: [:show]
  resources :municipalities, only: [:show]
  resources :clips, only: [:show]
  resources :visits, only: [:show]
  resources :searches, only: [:index]
  resources :relationships, only: [:create, :destroy]
  resources :inquiries, only: [:new, :create]
  resources :rankings, only: [:index]
  resources :posts, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :visits, only: [:destroy, :create]
    resources :clips, only: [:destroy, :create]
  end
  resources :end_users, only: [:show, :edit, :update] do
    member do
      get :following, :followers
    end
  end
end
