# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{first_name: "Fist Name", last_name: "Last Name", password: "Password", address: "Address", city: "City", state: "State", postal_code: "Postal Code", email_address: "Email"}])
inventories = Inventory.create([{user_id: "User", product_id: "Product", quantity: "Quantity", category_name: "Product Category"}])
products = Product.create([{product_name: "Product", product_purchase_price: "Product Purchase Price", product_estimate_price: "Product Price Estimate", product_category_name: "Product Category", product_make: "Product Make", product_warranty: "Warranty", product_warranty_length: "Warranty Length"}])