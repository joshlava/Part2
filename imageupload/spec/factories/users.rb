# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |f|
	f.name "Dylan"
	f.email "dylan.nangle@gmail.com"
	f.password "Password1"
  end
end
