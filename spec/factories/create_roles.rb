# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :create_role, :class => 'CreateRoles' do
    name "MyString"
  end
end
