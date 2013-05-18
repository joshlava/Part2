require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "Saves the user with name, email and password" do
		test = User.new(:name => "Dylan", :email => "dylan@mail.com", :password => "Test8900")
		assert test.save!
		test = User.new(:name => "Dylan1", :email => "dylan1@mail.com", :password => "Test8900")
		assert test.save!
	end

end
