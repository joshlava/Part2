require 'spec_helper'
include ActionDispatch::TestProcess

describe PhotosController do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")
   @user.save!
    sign_in @user
    @photo = Photo.new(user_id: 1, image: @file)
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
	@photo1 = Photo.new(user_id: 1, image: @file)
	it "Should create a new image" do
			post :create, :photo => @photo1
	end

	it "Should render a new action" do
			post :create
	end
end

describe "GET #edit" do
	it "should get edit" do
		get :edit, id: 1
		assert_response :success
	end

	it "should render 'edit' action" do
		@photo.update_attribute(:private, true)
		get :edit, id: 1
	end
end

describe "GET #update" do
	it "should get update" do
		put :update, id: 1, image: {}
	end

	it "should get update" do
		put :update, id: 1, image: nil
	end
end

describe "GET #destroy" do
	it "should get destroy" do
		delete :destroy, id: 1
	end
end



end
