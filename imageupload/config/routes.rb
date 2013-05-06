Imageupload::Application.routes.draw do
  
  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
    get "/", :to => "devise/registrations#new"
  end
  root :to => 'home#index'
  devise_for :users
  resources :users
  
 
 end
 
  