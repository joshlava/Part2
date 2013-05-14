class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  def index
    @user = User.all
    @users = User.search(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @photo = Photo.new(params[:user_id])
  end
end
