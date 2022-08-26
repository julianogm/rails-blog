User.create!(
  email: 'admin@test.com',
  password: '123123',
  password_confirmation: '123123',
  name: 'Admin User',
  roles: 'site_admin'
)
puts "1 admin user created"

User.create!(
  email: 'regular@test.com',
  password: '123123',
  password_confirmation: '123123',
  name: 'Regular User'
)
puts "1 regular user created"

3.times do |i|
	Topic.create!(
		title: "Topic #{i}"
	)
end
puts "3 topics created"

15.times do |i|
	Blog.create!(
		title: "Blog #{i}" ,
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco 
				laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
				irure dolor in reprehenderit in voluptate velit esse cillum 
				dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
				non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ,
		topic_id: rand(1..3)
	)
end
puts "15 blogs created"