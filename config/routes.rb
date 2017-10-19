Rails.application.routes.draw do
  root  'landing#index'
  resources :profiles
  devise_for :users

  resources :posts
    resources :feed_backs, only:[:create,:update]

    resources :comments, only:[:create,:destroy]
end
