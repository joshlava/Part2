Imageupload::Application.routes.draw do
  
  get "news/info"

 

  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
    get "/", :to => "devise/registrations#new"
  end
  root :to => 'home#index'
  devise_for :users
  
  resources :posts
  resources :users
  resources :photos
  
 
 end
 
  