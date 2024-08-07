puts "Cleaning the DB..."
Restaurant.destroy_all

5.times do
  Restaurant.create(
    name:  Faker::Restaurant.name,
    address: Faker::Address.city,
    category: Restaurant::CATEGORIES.sample
  )
end

puts "... created #{Restaurant.count} restaurants"
