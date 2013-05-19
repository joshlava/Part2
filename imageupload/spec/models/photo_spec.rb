require 'spec_helper'
include ActionDispatch::TestProcess
describe Photo do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")
    file = fixture_file_upload('/Unknown.jpg', 'image/jpeg')
    @photo = Photo.new(user_id: 1, image: file)
  end

  subject { @photo }

  it {should respond_to(:user_id)}
  it {should respond_to(:image)}
  

  describe "No file inserted" do
    it "should raise an error" do
	lambda{file = fixture_file_upload("", 'image/jpeg')}.should raise_error
    end
  end

  describe "File does not exist " do
    it "should raise an error" do
	lambda{file = fixture_file_upload("incorrect", 'image/jpeg')}.should raise_error
    end
  end

end