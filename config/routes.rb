Rails.application.routes.draw do

  devise_for :users
  # get 'static_pages/home'


  # define routes for users
  devise_scope :user do

    authenticated :user do
      root :to => 'users#my_timeline'
      get 'users/:user_id/timeline', to: 'users#timeline'
    end

    unauthenticated :user do
      root to: 'static_pages#home', as: :unauthenticated_root
    end
  end

  #
  get 'users/:user_id/follow', to: 'users#follow', as: 'follow_user'
  get 'users/:user_id/unfollow', to: 'users#unfollow', as: 'unfollow_user'



  # define routes for posts and comments
  resources :users do
    resources :posts do
      resources :comments
    end
  end
end
