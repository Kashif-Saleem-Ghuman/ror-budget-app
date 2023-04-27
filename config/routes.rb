Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  resources :groups, only: [:index, :new, :create] do
    resources :purchases, only: [:index, :new, :create]
 end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
