Rails.application.routes.draw do

  resources :contacts, only: [:new, :create]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts
  root 'posts#index'

  get '/sobre' => 'pages#sobre'
  get '/contato' => 'pages#contato'

end
