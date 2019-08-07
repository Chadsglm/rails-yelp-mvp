# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'

restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '01 43 54 23 31',
    category:      'chinese'
  },
  {
    name:         'Mahama',
    address:      '4 BArce St, London E7 5Qp',
    phone_number:  '01 34 54 67 12',
    category:      'indian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '01 43 24 23 86',
    category:       'italian'
  }
]
Restaurant.create!(restaurants_attributes)

reviews_attributes = [
  {
    content:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    rating:   5,
    restaurant_id: Restaurant.last.id
  },
  {
    content:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    rating:   4,
    restaurant_id: Restaurant.first.id
  }
]

Review.create!(reviews_attributes)

puts 'Finished!'
