require 'faker'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  categories = ["chinese", "italian", "japanese", "french", "belgian"]

  4.times {
    restaurant = Restaurant.new({name: Faker::Name.name,
                                   address: Faker::Address.street_name,
                                   phone_number: Faker::PhoneNumber.cell_phone,
                                   category: categories.sample})
    restaurant.save!
    7.times {
      Review.create(rating: (6*rand()).floor, content: Faker::ChuckNorris.fact, restaurant: restaurant)
    }
  }
