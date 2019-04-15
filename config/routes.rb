Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
     resources :posts
     resources :jgs
  end
  devise_for :users
  root "jgs#index"

  resources :jgs
  resources :posts
  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
    end
  end
end
