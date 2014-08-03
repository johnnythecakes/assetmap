# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Zach", last_name: "Johnson", password: "1234567", address: "1281 E Ridge Meadow Ln", city: "Salt Lake City", state: "Utah", postal_code: "84047", email_address: "me@me.com"}])