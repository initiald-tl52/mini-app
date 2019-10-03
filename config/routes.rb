Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#index'
  resources :users, only: [:edit, :update] do
    resources :blogs
  end
end
