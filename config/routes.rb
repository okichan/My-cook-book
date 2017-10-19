Rails.application.routes.draw do
  resources :posts
  resources :profiles
  devise_for :users

  resource :feed_back, only:[:create,:update]
   root  'landing#index'
end
