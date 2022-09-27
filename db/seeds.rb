# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "date"

puts "Destroying existing data..."
Event.destroy_all

# puts "Generating seeds..."

# puts "Generating events..."
# 20.times do
#   rand_price = rand(0..200)
#   event = Event.new(
#     title: Faker::Commerce.product_name,
#     description: Faker::Hobby.activity,
#     price: rand_price,
#     date: Date.today
#   )
#   event.save!
# end

# puts "Seeds complete!"
