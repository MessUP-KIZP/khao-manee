 Rails.application.routes.draw do
   devise_for :users


  namespace :api do
    namespace :v1 do
      resources :users, only: [:show] do
        resources :tags_users, only: [:index, :create, :destroy]
      end
    end
  end

  match '*path', to: 'home#index', via: :all
 end
