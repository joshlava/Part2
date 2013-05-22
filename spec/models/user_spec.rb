require 'spec_helper'

describe User do
	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "is invalid without a name" do
		FactoryGirl.build(:user, name: nil).should_not be_valid
	end

	it "is invalid without an email" do
		FactoryGirl.build(:user, email: nil).should_not be_valid
	end

	it "is invalid without a password" do
		FactoryGirl.build(:user, password: nil).should_not be_valid
	end

	it "when email format is invalid" do
		FactoryGirl.build(:user, email: '1').should_not be_valid
	end

	it "When an email address is already taken" do
		user = FactoryGirl.create(:user)
		FactoryGirl.build(:user, email: "Dylan.Nangle@mail.com").should_not be_valid
		FactoryGirl.build(:user, email: "Dylan.Nangle@mail.com").should_not be_valid
	end

	it "when password is not present" do
		FactoryGirl.build(:user, password: nil).should_not be_valid
	end

	it "when password is too short" do
		FactoryGirl.build(:user, password: 'sss').should_not be_valid
	end  

	it "returns a users name testing the user instance variable" do
		user = FactoryGirl.create(:user, name: "Dylan", email: "Dylan.Nangle@mails.com")
		user.name.should == "Dylan"
	end
end