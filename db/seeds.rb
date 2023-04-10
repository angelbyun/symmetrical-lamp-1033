# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Customer.destroy_all
  Item.destroy_all
  Supermarket.destroy_all

  @customer_1 = Customer.create!(name: "Sally Shopper")
  @customer_2 = Customer.create!(name: "Billy Buyer")
  @customer_3 = Customer.create!(name: "Patrick Purchaser")

  @supermarket_1 = Supermarket.create!(name: "Corner Market", location: "123 Food St.")
  @supermarket_2 = Supermarket.create!(name: "Intersection Groceries", location: "321 Snack Way")

  @item_1 = Item.create!(name: "Banana", price: 1, supermarket: @supermarket_1)
  @item_2 = Item.create!(name: "Eggs", price: 20, supermarket: @supermarket_1)
  @item_3 = Item.create!(name: "Coffee Creamer", price: 7, supermarket: @supermarket_1)
  @item_4 = Item.create!(name: "Apple", price: 3, supermarket: @supermarket_2)
  @item_5 = Item.create!(name: "Yogurt", price: 10, supermarket: @supermarket_2)
  @item_6 = Item.create!(name: "Cheese", price: 5, supermarket: @supermarket_2)