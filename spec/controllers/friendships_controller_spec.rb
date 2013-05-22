require 'spec_helper'
include ActionDispatch::TestProcess

describe FriendshipsController do

  before do
    @user = User.new(name: "Dylan1", email: "Dylan.Nangle@gmail1.com",
                     password: "Password1")
   @user.save!
    @user1 = User.new(name: "Dylan2", email: "Dylan.Nangle2@gmail1.com",
                     password: "Password2")
   @user1.save!
    sign_in @user
	sign_in @user1

  end

describe "GET #create" do
	it "Should create a new image" do
			post :create, friend_id: 2
	end

      it "assigns a newly created but unsaved post as @post" do
        Friendship.any_instance.stub(:save).and_return(false)
        post :create, {:friend_id => 5}
        assigns(:post).should_not be_a_new(Friendship)
      end

end

describe "GET #destroy" do
	it "should get destroy" do
		delete :destroy, id:1
	end
end



end
