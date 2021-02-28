# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Restaurant.create(
    name: Faker::Name.unique.last_name,
    address: ["Paris", "Lyon", "Nantes", "Lille", "Nice", "Rennes", "Strasbourg", "Nice", "Toulouse", "Bordeaux", "Biarritz", "Brest", "Pau"].sample,
    )
end

20.times do
  Review.create(
    content: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true),
    restaurant_id: (1..10).to_a.sample
    )
end
