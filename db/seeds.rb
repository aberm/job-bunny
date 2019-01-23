Boss.destroy_all
Tasker.destroy_all
Task.destroy_all

10.times do |index|
  Boss.create!(name: Faker::Name.name,
                email: Faker::Internet.email,
                username: Faker::Internet.username(6),
                city: Faker::Address.state
               )
  end
#
	10.times do |index|
	  Tasker.create!(name: Faker::Name.name,
	                email: Faker::Internet.email,
	                username: Faker::Internet.username(6),
	                city: Faker::Address.state,
	                bio: Faker::Lorem.paragraph(4),
	                vehicle: Faker::Boolean.boolean(0.8)
	               )
	  end
	20.times do |index|
	  Task.create!(location: Faker::Address.state,
	                description: Faker::Lorem.paragraph(5),
	                boss_id: Faker::Number.between(1, 10),
	                tasker_id: Faker::Number.between(1, 10),
									minutes: Faker::Number.between(1, 10) * 60,
	                vehicle: Faker::Boolean.boolean(0.8),
	                completed: Faker::Boolean.boolean(0.5),
									price_rate: Faker::Number.between(30,100)
	               )
	  end

# Boss.create(name: "john f", email: "john5@gmail.com", username: "john5", city: "Brooklyn")
# Boss.create(name: "dave s", email: "dave55@gmail.com", username: "dave55", city: "Brooklyn")
# Boss.create(name: "mark z", email: "mark4@gmail.com", username: "mark4", city: "NY")
# Boss.create(name: "john l", email: "johnl123@gmail.com", username: "john123", city: "Manhattan")
# Boss.create(name: "robert", email: "robert@gmail.com", username: "robert", city: "Boston")
# Boss.create(name: "thomas", email: "thomas@gmail.com", username: "thomas", city: "Brooklyn")
#
# Tasker.create(name: "Sammy", email: "sammy@gmail.com", username: "sammy5", city: "Brooklyn", bio: "hi there how are you")
# Tasker.create(name: "John f k", email: "jfkjfk@gmail.com", username: "johnken", city: "Brooklyn", bio: "hi there how are you")
# Tasker.create(name: "johnno", email: "johnno@gmail.com", username: "johnno", city: "NYC", bio: "hi there how are you")
# Tasker.create(name: "Greg d", email: "gregreg@gmail.com", username: "greg321", city: "Brooklyn", bio: "hi there how are you", vehicle: true)
# Tasker.create(name: "Rick s", email: "ricksan@gmail.com", username: "therick", city: "Manhattan", bio: "hi there how are you")
# Tasker.create(name: "Walter", email: "walter6@gmail.com", username: "walter6", city: "Boston", bio: "hi there how are you")
# Tasker.create(name: "Nathan", email: "nathan1@gmail.com", username: "nathan111", city: "Boston", bio: "hi there how are you")
