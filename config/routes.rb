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
  root "welcome#index"
  resources :zhibiaos
  resources :wls
  resources :welcome
  resources :jgs
  resources :lszbs
  resources :posts
  resources :welcome
  resources :posts do
    member do
      post "like" => "posts#like"
      post "unlike" => "posts#unlike"
    end
  end
end
