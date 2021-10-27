# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
puts 'The database is clean'

puts 'Creating 10 restaurants...'
10.times do
  restos = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::Number.number(digits: 10),
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "#{restos.name} has been created!"
end

puts 'Finished!'
