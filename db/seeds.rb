# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' 



#____________________FAKE USER CREATION_________________________

10.times do
User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, email:Faker::Internet.email, encrypted_password:"azerty", description:Faker::TvShows::SiliconValley.motto)
end

puts "Users created"

# #____________________FAKE EVENT CREATION_________________________
10.times do
Event.create(start_date:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), title:Faker::Marketing.buzzwords, description:Faker::Lorem.words(number: 21), price:Faker::Number.within(range: 1..1000), location:Faker::Address.street_name, duration:Faker::Lorem.words(number: 3))
end

puts "Events created"