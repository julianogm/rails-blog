3.times do |i|
	Topic.create!(
		title: "Topic #{i}"
	)
end
puts "3 topics created"

10.times do |i|
	Blog.create!(
		title: "Blog n #{i}" ,
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco 
				laboris nisi ut aliquip ex ea commodo consequat. Duis aute 
				irure dolor in reprehenderit in voluptate velit esse cillum 
				dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
				non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ,
		topic_id: Topic.last.id
	)
end
puts "10 blogs created"

4.times do |i|
	Skill.create!(
		title: "Skill n #{i}" ,
		percent_utilized: 30
	)
end
puts "4 skills created"


7.times do |i|
	Portfolio.create!(
		title: "Portfolio n #{i}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
		main_image: "https://via.placeholder.com/600x400?text=Rails+Blog" ,
		thumb_image: "https://via.placeholder.com/300x150?text=Rails+Blog"
	)
end

1.times do |i|
	Portfolio.create!(
		title: "Portfolio n #{i}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
		main_image: "https://via.placeholder.com/600x400?text=Rails+Blog" ,
		thumb_image: "https://via.placeholder.com/300x150?text=Rails+Blog"
	)
end
puts "8 portfolios created"