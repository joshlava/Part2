
require 'test_helper'

module PhotosController
	class PhotoscontrollerTest < ActionController::TestCase
		test "should get index" do
			get
			assert_response :success
		end	
	end
end
