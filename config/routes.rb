Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users
  root "users#index"
  
  put 'user/:user_id/post/:id/like', to: 'posts#like', as: 'like' 

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:new, :create]
      resources :likes, only: [:create]
    end
  end
end
  
#   root "users#index"
#   get "users/:id" => "users#show"
#   get "users/:user_id/posts" => "posts#index", as: :users_posts
#   get "users/:user_id/posts/:id" => "posts#show", as: :users_posts_id
 
# end
