Rails.application.routes.draw do
  devise_for :users #, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

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
