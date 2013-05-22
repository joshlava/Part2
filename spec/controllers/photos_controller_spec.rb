require 'spec_helper'
include ActionDispatch::TestProcess

describe PhotosController do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")
   @user.save!
    sign_in @user
    @photo = Photo.new(user_id: 1)
			@photo.image = @file
   @photo.save!

 @file = fixture_file_upload('/Unknown.jpg', 'image/jpeg')
  end



describe "GET #new" do
	it "assigns a photo to a user id" do
		@photo.should be_an_instance_of Photo
	end
	
	it "new" do
		get :new, :user_id => 1
		assert_response :success
	end
end

describe "GET #create" do
	it "Should create a new image" do
			pp @photo
			post :create, image: {}

	end
end

describe "GET #edit" do
	it "should get edit" do
		get :edit, id: 1
		assert_response :success
	end
end

describe "GET #update" do
	it "should get update" do
		put :update, id: 1, image: {}
	end
end

describe "GET #destroy" do
	it "should get destroy" do
		delete :destroy, id: 1
	end
end



end
