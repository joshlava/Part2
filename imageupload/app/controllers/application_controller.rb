class ApplicationController < ActionController::Base
  protect_from_forgery
  def show 
    @users = User.all
  end
end
