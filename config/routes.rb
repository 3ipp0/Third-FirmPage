Rails.application.routes.draw do
  
  resources :few_days_meetings
  resources :meetings
  devise_for :models
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'pages#index'
  get 'about' => 'pages#about' , as: 'about'
  get 'portfolio' => 'pages#portfolio' , as: 'portfolio'
  get 'contacts' => 'pages#contacts' , as: 'contacts'
  get 'vacansy' => 'pages#vacansy' , as: 'vacansy'
  get 'events' => 'pages#events' , as: 'events'
  get 'blog' => 'pages#blog' , as: 'blog'
  get 'apply_event' => 'few_days_meetings#apply' , as: 'apply_event'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
