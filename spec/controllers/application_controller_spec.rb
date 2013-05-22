require 'spec_helper'

describe ApplicationController do
 user = FactoryGirl.build(:user, name: "DylanNangle1", email:"test@mail.com", password: "Password1")
 user.save!


  describe "GET 'show'" do
    it "should be successful" do
	get :show
    end
 end

end
