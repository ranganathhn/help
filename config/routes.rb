Rails.application.routes.draw do
  resources :news_data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'news_data#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
