Rails.application.routes.draw do

  root to: 'homes#top'
  get '/about' => 'homes#about'


  devise_for :users
  resources :users
  patch 'users/update' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
end
