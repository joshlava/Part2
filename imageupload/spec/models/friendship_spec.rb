require 'spec_helper'

describe Friendship do
<<<<<<< HEAD
	it "has a valid factory" do
		FactoryGirl.create(:friendship).should be_valid
	end

	it "is valid without a user_id" do
		FactoryGirl.build(:friendship, user_id: nil).should be_valid
	end

	it "is valid without a friend_id" do
		FactoryGirl.build(:friendship, friend_id: nil).should be_valid
	end

end
=======
  pending "add some examples to (or delete) #{__FILE__}"
end
>>>>>>> ceab64044801f75b3995bfabeff49c2a0f4294db