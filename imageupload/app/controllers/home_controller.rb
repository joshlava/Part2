class HomeController < ApplicationController
  
  def index
    @featured = User.find(:all, :limit => 4, :order => 'RANDOM()')
    @users = User.find(:all)
    user_count = User.count()
    offset = rand(0..(user_count-1))
    @my_user = User.find(:all, :limit => 1, :offset => offset )
    picture_count = Photo.count(params[:user_id => @my_user[0].id])
    poffset = rand(0..(picture_count - 1))
    @fphoto = Photo.find(:all, :limit => 1, :offset => poffset )
    
  end
end
