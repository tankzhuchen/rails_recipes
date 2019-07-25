Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :zhibiaos
     resources :posts
     resources :jgs
     resources :wls
     resources :tjs
  end
  devise_for :users
  root "posts#index"
  resources :zhibiaos
  resources :wls
  resources :jgs
  resources :lszbs
  resources :posts
  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
    end
  end
end
