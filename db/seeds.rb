# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Livingroom.destroy_all
livingrooms = [
  {
    address: "1 rue de Paris",
    user: User.find(1),
    title: "Bel appartement à Montmartre",
    capacity: 45,
    price: 1200,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  },
  {
    address: "1 rue de Paris",
    user: User.find(1),
    title: "Bel appartement à Versailles",
    capacity: 6,
    price: 40,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  },
  {
    address: "1 rue de Paris",
    user: User.find(1),
    title: "Bel appartement à Pigalle",
    capacity: 2,
    price: 54,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  },
  {
    address: "1 rue de Paris",
    user: User.find(1),
    title: "Bel appartement à Oberkampf",
    capacity: 8,
    price: 99,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  }
]
livingrooms.each { |livingroom| Livingroom.create(livingroom) }
