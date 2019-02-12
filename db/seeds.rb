# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Attendance.destroy_all
User.destroy_all
Event.destroy_all

puts "destroy"

10.times do
	user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lovecraft.paragraphs, email: Faker::Internet.free_email, password: "azerty")
end

puts "user created"

20.times do
    event = Event.create!(admin_id: rand(User.all.first.id..User.all.last.id), title: Faker::Book.title, description: Faker::HarryPotter.quote, price: rand(User.all.first.id..User.all.last.id), duration: 5, location: Faker::GameOfThrones.city, start_date: Faker::Date.forward(23))
end

puts "events created"

  10.times do 
    attendance = Attendance.create!(user_id: rand(User.all.first.id..User.all.last.id), event_id: rand(Event.all.first.id..Event.all.last.id))
  end 

puts "attendance created"