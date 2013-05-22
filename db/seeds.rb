puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.name
user.add_role :user

user3 = User.find_or_create_by_email :name => 'Third User', :email => 'user3@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user3.name
user.add_role :user

user4 = User.find_or_create_by_email :name => 'Fourth User', :email => 'user4@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user4.name
user.add_role :user
