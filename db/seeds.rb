# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find(1)

Movie.create({ 
  title: 'Star Wars: The Force Awakens', 
  description: 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.', 
  duration: 90, 
  rating: 'PG-13',
  user_id: user.id
   })

Movie.create({ 
  title: 'Seabiscuit', 
  description: 'True story of the undersized Depression-era racehorse whose victories lifted not only the spirits of the team behind it but also those of their <nation class=""></nation>', 
  duration: 140, 
  rating: 'PG-13',
  user_id: user.id
   })