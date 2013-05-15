class HomeController < ApplicationController
  
  def index
    @featured = User.find(:all, :limit => 4, :order => 'RANDOM()')
    @users = User.find(:all)
  end
end
