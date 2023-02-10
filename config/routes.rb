Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users
  root "users#index"
  
  put 'user/:user_id/post/:id/like', to: 'posts#like', as: 'like' 

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
        resources :likes, only: [:new]
    end
  end

  namespace :api do 
    resources :users, only: [:show] do
      resources :posts, only: [:index] do 
        resources :comments, only: [:index, :create]
      end
    end
  end
end

