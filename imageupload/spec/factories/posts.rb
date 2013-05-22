# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do |f|
	f.title "Dylan's Post"
	f.body "This is a test string"
  end
end
