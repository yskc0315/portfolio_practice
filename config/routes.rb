Rails.application.routes.draw do

  devise_for :users
  root 'homes#top'
  resources :maps, only:[:index]
  resources :forums, only:[:create, :index, :show] do
    resources :forum_posts, only:[:create]
  end

  resources :museums do
    resources :comments, only:[:create, :destroy] do
      resources :favorites, only:[:create, :destroy]
    end
    resources :recommends, only:[:create, :destroy]
    resources :visits, only:[:create, :destroy]
  end

  resources :genres, only:[:index, :create]
  resources :notifications, only:[:index]


  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
