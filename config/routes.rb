Rails.application.routes.draw do
  get 'react_examples/component', to: 'react_examples#component', as: :component
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :users, only: [:show] do
    resources :tags_users, only: [:index, :create, :destroy]
  end
end
