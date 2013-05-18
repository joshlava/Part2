require 'spec_helper'

describe FriendshipsController do
	let (:user) {FactoryGirl.create(:user)}
	let(:other_user) {FactoryGirl.create(:user) }

	before {sign_in user}
	
	describe "creating a relationship with Ajax" do
		it "Should increment the Relationship count" do
			expect
end
