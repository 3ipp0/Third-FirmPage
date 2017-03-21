Rails.application.routes.draw do
  
  resources :few_days_meetings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  root 'pages#index', as: 'root'
  get 'about' => 'pages#about' , as: 'about'
  get 'portfolio' => 'pages#portfolio' , as: 'portfolio'
  get 'contacts' => 'pages#contacts' , as: 'contacts'
  get 'vacansy' => 'pages#vacansy' , as: 'vacansy'
  get 'events' => 'pages#events' , as: 'events'
  get 'blog' => 'pages#blog' , as: 'blog'
  # get 'apply_event' => 'users#apply' , as: 'apply_event'
  # map.resources :few_days_meetings, :member => {:follow => :post}
  get "apply_event/:id" => "few_days_meetings#follow", :as => :follow
  patch "confirmation/:id" => "users#update", :as => :update

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
