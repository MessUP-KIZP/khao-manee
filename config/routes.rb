Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'users/sign_out', to: 'users/sessions#destroy'
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show] do
        resources :tags_users, only: [:index, :create, :destroy]
      end
    end
  end

  root to: 'home#index'

  match '*path', to: 'home#index', via: :all
end
