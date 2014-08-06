# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Fist Name", last_name: "Last Name", password: "Password", address: "Address", city: "City", state: "State", postal_code: "Postal Code", email_address: "Email"}])

#products = Product.create([{product_name: "Iphone", product_purchase_price: "300", product_estimate_price: "250", product_category_id: "Electronics", product_make: "Apple", product_warranty: "True", product_warranty_length: "1.7"}])