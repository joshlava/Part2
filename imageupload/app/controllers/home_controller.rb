class HomeController < ApplicationController
  
  def index
    @users = User.find(:all, :limit => 3, :order => 'created_at')
  end
end
