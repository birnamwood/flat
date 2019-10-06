Rails.application.routes.draw do
  namespace :admin do
    get 'admin_users/index'
  end
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :admin_users, only: [:index]
  end

end
