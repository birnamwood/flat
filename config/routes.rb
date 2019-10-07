Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  root to: 'home#index'
  devise_for :end_users
  devise_for :admin_users

  namespace :admin do
    resources :admin_users, only: [:index]
  end

  resources :home, only: [:index]
  resources :posts, only: [:new, :create, :edit, :update, :show]
end
