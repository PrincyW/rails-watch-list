# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Movie.destroy_all
puts 'Creating movies...'
30.times do
  Movie.create!(title: Faker::Movie.title, overview: Faker::Quote.yoda, poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: rand(0.0..10.0).round(1))
end
puts 'Finished!'

puts 'Cleaning database...'
List.destroy_all
puts 'Creating lists...'
List.create(name: 'Love')
List.create(name: 'Queer')
List.create(name: 'Society')
List.create(name: 'Horror 2000')
List.create(name: 'Weird')
puts 'Finished!'
