# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :friendship do |f|
	f.friend_id 2
	f.user_id 1
  end
end
