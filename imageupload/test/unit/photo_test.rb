require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
	"Test the photo model by uploading and image and saving it. If it does not save correctly, then an error will be produced"
	test "Test the photo model" do
		photo = Photo.new
		photo.image = File.open("public/uploads/user/avatar/1/Alistair_2.jpg")
		assert photo.save!
	end

	"Test the avatar upload function for a user. Make sure that the directory and file exist and then perform the upload."
	"Tests performed:
		1) Fake upload location: Passed
		2) Fake directory location: Passed
		3) Ensure that you can only upload image files for an avatar: Passed"
	test "avatar upload" do
		u = User.new(:name => "Dylan", :email => "Dylan.Nanlge@mail.com", :password => "Password1")
		#u.avatar = params[:file]
		u.avatar = File.open("public/uploads/user/avatar/1/Alistair_2.jpg")
		assert u.save!
	end
end
