Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    resources :tags_users, only: [:index, :create, :destroy]
  end

  get '*page', to: 'home#index', constraints: ->(req) { !req.xhr? && req.format.html? }

  root to: "home#index"
end
