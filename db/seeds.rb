# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Zach", last_name: "Johnson", password: "1234567", address: "1281 E Ridge Meadow Ln", city: "Salt Lake City", state: "Utah", postal_code: "84047", email_address: "me@me.com"}])

#products = Product.create([{product_name: "Iphone", product_purchase_price: "300", product_estimate_price: "250", product_category_id: "Electronics", product_make: "Apple", product_warranty: "True", product_warranty_length: "1.7"}])