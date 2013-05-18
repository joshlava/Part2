require 'spec_helper'

describe Photo do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")

    test_image = "test/fixtures/Unknown.jpg"
    file = Rack::Test::UploadedFile.new(test_image, "image/jpeg")
    @photo = Photo.new(user_id: 1, image: file)
  end

  subject { @photo }

  describe "when no file is selected" do
    before { @photo.image = "" }
    it { should_not be_valid }
  end

    
   
end