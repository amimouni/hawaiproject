# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

######################## SEED USER ###############################

user = User.new
user.email = "alaindelon@moi.fr"
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
# user.encrypted_password = "#$taawktljasktlw4aaglj"
user.first_name = "Alain"
user.last_name = "Delon"
user.industry = "Movie big business"
user.job = "Being myself, what else?"
user.save


######################## SEED LIVINGROOM ###############################

Livingroom.destroy_all
livingrooms = [
  {
    address: "24 rue Piat 75020",
    user: User.find(1),
    title: "Boulogne Hills",
    capacity: 4,
    price: 32,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  },
   {
    address: "24 rue de la folie mericourt",
    user: User.find(1),
    title: "Bel appartement",
    capacity: 6,
    price: 58,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  },
  # {
  #   address: "13 rue du foin",
  #   user: User.find(1),
  #   title: "Nice and lovely",
  #   capacity: 3,
  #   price: 33,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 rue du foin",
  #   user: User.find(1),
  #   title: "Bel appartement",
  #   capacity: 6,
  #   price: 58,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "3 rue de Paradis",
  #   user: User.find(1),
  #   title: "Appartement confortable",
  #   capacity: 2,
  #   price: 24,
  #   city: "Lille",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 av de la gare",
  #   user: User.find(1),
  #   title: "Modern with coffee machine",
  #   capacity: 3,
  #   price: 33,
  #   city: "Nantes",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "22 rue du dragon",
  #   user: User.find(1),
  #   title: "Grand Loft moderne",
  #   capacity: 3,
  #   price: 33,
  #   city: "Versailles",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "44 boulevard de menilmontant",
  #   user: User.find(1),
  #   title: "Quiet & Lovely",
  #   capacity: 1,
  #   price: 11,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 rue de la Paix",
  #   user: User.find(1),
  #   title: "Devs friendly",
  #   capacity: 6,
  #   price: 72,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "46 boulevard saint-martin",
  #   user: User.find(1),
  #   title: "Devs & startupers",
  #   capacity: 4,
  #   price: 44,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "24 rue Piat",
  #   user: User.find(1),
  #   title: "Belleville Hills",
  #   capacity: 4,
  #   price: 32,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  #  {
  #   address: "24 rue de la folie mericourt",
  #   user: User.find(1),
  #   title: "Bel appartement",
  #   capacity: 6,
  #   price: 58,
  #   city: "Nantes",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 rue du foin",
  #   user: User.find(1),
  #   title: "Nice and lovely",
  #   capacity: 3,
  #   price: 33,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 rue du foin",
  #   user: User.find(1),
  #   title: "Bel appartement",
  #   capacity: 6,
  #   price: 58,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "3 rue de Paradis",
  #   user: User.find(1),
  #   title: "Appartement confortable",
  #   capacity: 2,
  #   price: 24,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 av de la gare",
  #   user: User.find(1),
  #   title: "Modern with coffee machine",
  #   capacity: 3,
  #   price: 33,
  #   city: "Nantes",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "22 rue du dragon",
  #   user: User.find(1),
  #   title: "Grand Loft moderne",
  #   capacity: 3,
  #   price: 33,
  #   city: "Versailles",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "44 boulevard de menilmontant",
  #   user: User.find(1),
  #   title: "Sympa et calme",
  #   capacity: 1,
  #   price: 11,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 rue de la Paix",
  #   user: User.find(1),
  #   title: "Startupers Welcome",
  #   capacity: 6,
  #   price: 72,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "46 boulevard saint-martin",
  #   user: User.find(1),
  #   title: "Devs & startupers",
  #   capacity: 4,
  #   price: 44,
  #   city: "Lyon",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "13 av de la gare",
  #   user: User.find(1),
  #   title: "Modern with coffee machine",
  #   capacity: 3,
  #   price: 33,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  # {
  #   address: "46 boulevard saint-martin, 75010",
  #   user: User.find(1),
  #   title: "Dev & startupers",
  #   capacity: 4,
  #   price: 44,
  #   city: "Paris",
  #   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  # },
  {
    address: "42 rue du faubourg Saint-Denis, 75010 paris",
    user: User.find(1),
    title: "Loft lumineux",
    capacity: 3,
    price: 36,
    city: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi accusamus temporibus amet, nemo eos excepturi nisi laborum delectus ut, nobis."
  }
]
livingrooms.each { |livingroom| Livingroom.create(livingroom) }
