class ApplicationController < ActionController::Base
  protect_from_forgery
  def show 
    @users = User.all
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
