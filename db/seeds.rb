# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
CATEGORIES = %w[chinese italian japanese french belgian].freeze
Restaurant.destroy_all
puts 'creating 5 fake restaurants...'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    category: CATEGORIES.sample,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!
end
puts 'finished!'
