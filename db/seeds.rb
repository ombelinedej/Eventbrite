
require 'faker' 
User.destroy_all
Event.destroy_all
Attendance.destroy_all
20.times do
    User.create(email: Faker::Internet.email, 
    			password: 'azerty', 
    			description: Faker::Lorem.paragraph(sentence_count: 2), 
    			first_name: Faker::Name.first_name, 
    			last_name: Faker::Name.last_name)
end
   tp User.all
20.times do
	Event.create(start_date: Faker::Date.forward(days: 23), 
    			duration: 5*rand(1..1000),
    			description: Faker::Lorem.paragraph(sentence_count: 5), 
    			title: Faker::Quotes::Shakespeare.king_richard_iii_quote, 
    			price: Faker::Number.within(range: 1..100), 
    			location: Faker::Address.city, 
    			admin_id: User.all.sample.id)
     tp Event.all
end
20.times do 
	Attendance.create(attendee_id: User.all.sample.id, 
    					event_id: Event.all.sample.id)
end
  tp Attendance.all

# User.destroy_all
# Event.destroy_all
# Attendance.destroy_all


# #____________________FAKE USER CREATION_________________________

# 10.times do
# User.create(
# 	first_name:Faker::Name.first_name,
# 	last_name:Faker::Name.last_name, 
# 	email:Faker::Internet.email,
# 	password:"azerty", 
# 	description:Faker::TvShows::SiliconValley.motto)
# end

# puts "Users created"
# tp User.all

# # ____________________FAKE EVENT CREATION_________________________

# 10.times do
# Event.create(start_date:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,format: :short), 
# title:Faker::Marketing.buzzwords, 
# description:Faker::Lorem.words(number: 21), 
# price:Faker::Number.within(range: 1..1000), 
# location:Faker::Address.street_name, 
# duration:Faker::Lorem.words(number: 3))
# end

# puts "Events created"
# tp Event.all



# # ____________________FAKE ATTENDANCES CREATION_________________________


# 10.times do
# Attendance.create(stripe_customer_id:Faker::Number.within(range: 1..100))
# end

# puts "Attendance created"

# tp Attendance.all






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

