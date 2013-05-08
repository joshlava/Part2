class UsersController < ApplicationController
  
  before_filter :authenticate_user!

    def index
      @users = User.all
      @photos = Photo.all
    end

    def show
      @user = User.find(params[:id])
      @photo = Photo.new(params[:name])
    end
end
