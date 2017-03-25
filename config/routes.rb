Rails.application.routes.draw do

  devise_for :users

  resources :few_days_meetings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  root 'pages#index', as: 'root'

  #pages
  get 'about' => 'pages#about' , as: 'about'
  get 'portfolio' => 'pages#portfolio' , as: 'portfolio'
  get 'contacts' => 'pages#contacts' , as: 'contacts'
  get 'vacansy' => 'pages#vacansy' , as: 'vacansy'
  get 'events' => 'pages#events' , as: 'events'
  get 'blog' => 'pages#blog' , as: 'blog'

  get "apply_event/:id" => "few_days_meetings#follow", :as => :follow
  patch "confirmation/:id" => "users#update", :as => :update
  
  get 'index.html' => 'pages#index'
  get "index" => 'pages#index'

  post '' => 'calls#create', :as => :new_call
  post 'calls/new' => 'calls#new', :as => :calls

  post 'emails/create' => 'emails#create', :as => :new_email
  post 'emails/new' => 'emails#new', :as => :emails

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
