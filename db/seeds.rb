# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating shop"

Shop.create(
  name: "Tullia",
  address: "Porto-Vecchio" )

Shop.create(
  name: "Pradau",
  address: "L'isle sur la Sorgue" )

Shop.create(
  name: "Muget",
  address: "Cap Ferret" )

Shop.create(
  name: "Aurel",
  address: "Cap Ferret" )

puts "4 Shops created"

puts "Creating Hourly"

Hourly.create(
  monday: "08:30 - 20:00",
  tuesday: "08:30 - 20:00",
  wednesday: "08:30 - 20:00",
  thursday:" 08:30 - 20:00",
  friday:"08:30 - 20:00",
  saturday: "08:30 - 20:00",
  sunday: "Fermé",
  shop_id: 1)

Hourly.create(
  monday: "08:30 - 20:00",
  tuesday: "Fermé",
  wednesday: "08:30 - 20:00",
  thursday:"08:30 - 20:00",
  friday:"08:30 - 20:00",
  saturday: "08:30 - 20:00",
  sunday: "08:30 - 20:00",
  shop_id: 2)

Hourly.create(
  monday: "08:30 - 20:00",
  tuesday: "08:30 - 20:00",
  wednesday: "08:30 - 20:00",
  thursday:"Fermé",
  friday:"08:30 - 20:00",
  saturday: "08:30 - 20:00",
  sunday: "08:30 - 20:00",
  shop_id: 3)

Hourly.create(
  monday: "Fermé",
  tuesday: "08:30 - 20:00",
  wednesday: "08:30 - 20:00",
  thursday:"08:30 - 20:00",
  friday:"08:30 - 20:00",
  saturday: "08:30 - 20:00",
  sunday: "08:30 - 20:00",
  shop_id: 4)

puts "4 Hourly created"