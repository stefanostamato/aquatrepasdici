Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts
  root 'posts#index'

  match '/sobre' => 'pages#sobre'
  match '/contato' => 'pages#contato'

end
