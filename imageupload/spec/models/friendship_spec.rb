require 'spec_helper'

describe Friendship do
	it "has a valid factory" do
		FactoryGirl.create(:friendship).should be_valid
	end

	it "is invalid without a name"

	it "is invalid without an email"

	it "is invalid without a password" 

	it "when email format is invalid" 

end