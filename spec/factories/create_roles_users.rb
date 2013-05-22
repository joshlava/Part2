# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :create_roles_user, :class => 'CreateRolesUsers' do
    role_id 1
    user_id 1
  end
end
