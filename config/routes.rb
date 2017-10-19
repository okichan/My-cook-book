Rails.application.routes.draw do
  resources :posts
  resources :profiles
  devise_for :users
   root  'landing#index'
end
