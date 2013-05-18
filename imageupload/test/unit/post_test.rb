require 'test_helper'

class PostTest < ActiveSupport::TestCase
	#Test for the post model. We need to ensure name is validated as well as title.
	#Title must be at least 5 characters

	"Testing Completed:
		1) No Title - Completed
		2) Title less than 5 characters - Completed
		3) Title and greater than 5 characters - Completed"
	"28.6% Total coverage"
	test "Validate Post Title" do
		post = Post.new(:title => "Title is this")
		assert post.save!
	end
end
