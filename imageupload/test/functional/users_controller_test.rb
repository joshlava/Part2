require 'test_helper'

class UsersControllerTest < ActionController::TestCase	
	setup do
		@user = User.new(:name => 'Dylan', :email => 'Dylan.nangle@mail.com')
	end
	test "should get index" do
		get :index
		assert_response :success
		
	
	end
end
