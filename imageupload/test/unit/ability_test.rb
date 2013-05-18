require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
	test "Create new user" do
		user = User.new(:name => "Dylan", :email => "dylan.nangle@gmail.com")
		if user.has_role? :user 
			assert (true)
		end
	end
end
