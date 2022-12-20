Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do
    resources :comments, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  end
  resources :comments, only: [:edit, :update, :destroy, :index, :show, :new, :create]
end
