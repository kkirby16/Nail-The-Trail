# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

cities = ["Seattle", "Eugene", "Tempe", "San Francisco", "Albuquerque", "Boston", "Denver", "Chicago", "Las Vegas", "Miami", "Minneapolis", "Salt Lake City"]

difficulty_levels = ["Easy", "Moderate", "Difficult"]
years_hiking_levels = "1,2,3,4,5,6,7,8,9,10".split(",")

100.times do
  Hike.create(name: Faker::Address.unique.community, location: cities.sample, description: Faker::Hipster.paragraph(sentence_count: 8), difficulty: difficulty_levels.sample)
end

60.times do
  User.create(name: Faker::Name.unique.name, username: Faker::Hipster.words(number: 2).join, city: cities.sample, bio: Faker::Hipster.paragraph(sentence_count: 6), years_hiking: years_hiking_levels.sample, password: Faker::Internet.password(min_length: 8))
end

600.times do
  Review.create(user_id: User.all.sample.id, hike_id: Hike.all.sample.id, title: Faker::Hipster.sentence(word_count: 5), description: Faker::Hipster.paragraph(sentence_count: 6), date: Faker::Date.between(from: "2014-02-19", to: Date.today), star_rating: Faker::Number.within(range: 1..5))
end
