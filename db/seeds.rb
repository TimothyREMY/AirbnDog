# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
JoinTableDogDogsitter.destroy_all
JoinTableStrollDog.destroy_all


require 'faker'

5.times do
  city = City.create(name: Faker::Nation.capital_city)
  dog = Dog.create(name: Faker::Name.first_name, city_id: City.all.sample.id)
  dogsitter = Dogsitter.create(name: Faker::Name.first_name, city_id: City.all.sample.id)
  join_table_dog_dogsitters = JoinTableDogDogsitter.create(dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id)
  stroll = Stroll.create(dogsitter_id: Dog.all.sample.id)
  join_table_stroll_dogs = JoinTableStrollDog.create(stroll_id: Stroll.all.sample.id, dog_id: Dog.all.sample.id)
end