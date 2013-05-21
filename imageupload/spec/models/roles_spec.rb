require 'spec_helper'

describe Role do
	it "has a valid factory" do
		FactoryGirl.create(:role).should be_valid
	end
end