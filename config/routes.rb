Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :end_users
  devise_for :admin_users

  namespace :admin do
    resources :admin_users, only: [:index]
  end

  resources :home, only: [:index]

end
