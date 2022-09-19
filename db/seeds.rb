# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

5.times do
  Flat.create(name: Faker::Beer.name, address: Faker::Address.street_address,
            url_image: Faker::LoremFlickr.image(search_terms: ['house']),
            description: Faker::Quote.famous_last_words,
            price_per_night: (10..150).to_a.sample, number_of_guests: (1..6).to_a.sample)
  end

  puts "db ok"
