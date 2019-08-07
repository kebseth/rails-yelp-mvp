# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  resto = Restaurant.new(
    address: Faker::Address.city,
    category: category.sample,
    name: Faker::Restaurant.name
    )
  resto.save
end


puts "created"
