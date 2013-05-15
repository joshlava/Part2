Imageupload::Application.routes.draw do
  
  get "news/info"

  match 'users/:id/edit_display' => 'users#edit_display', :constraints => {:id => /\d+/}, :as => :edit_display

  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
    get "/", :to => "devise/registrations#new"
  end
  root :to => 'home#index'
  devise_for :users
  resources :users
  resources :photos
  resources :posts
  resources :friendships
  
  
  
 
 end
 
  
