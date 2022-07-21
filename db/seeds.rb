# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying users...'
User.destroy_all
puts 'Destroying pets...'
Pet.destroy_all
puts 'Clean database!'

puts 'Creating users...'
25.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '1234567',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    location: Faker::Address.country
  )
  puts "Created user #{user.id}"

  random = rand(1..2)
  if random == 1
    puts 'Creating pets...'
    pet = Pet.new(
      name: Faker::Creature::Dog.name,
      age: rand(1..18),
      breed: Faker::Creature::Dog.breed,
      size: Faker::Creature::Dog.size
    )
    pet.user = user
    pet.save
    puts "Created pet #{pet.id}"
  end
end

puts 'Done!'
