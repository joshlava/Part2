require 'spec_helper'
include ActionDispatch::TestProcess

describe PhotosController do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")
   @user.save!
	pp @user
 sign_in @user
    @file = fixture_file_upload('/Unknown.jpg', 'image/jpeg')
    @photo = Photo.new(:user_id => '1')
  end



describe "GET #new" do
	it "assigns a photo to a user id" do
		@photo.should be_an_instance_of Photo
	end
	
	it "new" do
		post :new, @photo
		pp @photo
	end
end

end
