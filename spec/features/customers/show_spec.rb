require 'rails_helper'

RSpec.describe "customer show", type: :feature do
  let!(:customer_1) { Customer.create!(name: "Sally Shopper") }
  let!(:customer_2) { Customer.create!(name: "Billy Buyer") }
  let!(:customer_3) { Customer.create!(name: "Patrick Purchaser") }

  let!(:item_1) { Item.create!(name: "Banana", price: 1, supermarket: supermarket_1) }
  let!(:item_2) { Item.create!(name: "Eggs", price: 20, supermarket: supermarket_1) }
  let!(:item_3) { Item.create!(name: "Coffee Creamer", price: 7, supermarket: supermarket_1) }
  let!(:item_4) { Item.create!(name: "Apple", price: 3, supermarket: supermarket_2) }
  let!(:item_5) { Item.create!(name: "Yogurt", price: 10, supermarket: supermarket_2) }
  let!(:item_6) { Item.create!(name: "Cheese", price: 5, supermarket: supermarket_2) }

  let!(:supermarket_1) { Supermarket.create!(name: "Corner Market", location: "123 Food St.") }
  let!(:supermarket_2) { Supermarket.create!(name: "Intersection Groceries", location: "321 Snack Way") }

  before do
    CustomerItem.create!(customer: customer_1, item: item_1)
    CustomerItem.create!(customer: customer_1, item: item_2)
    CustomerItem.create!(customer: customer_2, item: item_3)
    CustomerItem.create!(customer: customer_2, item: item_4)
    CustomerItem.create!(customer: customer_3, item: item_5)
    CustomerItem.create!(customer: customer_3, item: item_6)
  end

  describe 'when I visit a customer show page' do
    it 'displays the customers name' do
      visit "/customers/#{customer_1.id}"

      expect(current_path).to eq("/customers/#{customer_1.id}")
      expect(page).to have_content(customer_1.name)
    end

    it 'displays a list of customers items including item name, price, and name of the supermarket it belongs to' do
      visit "/customers/#{customer_1.id}"
save_and_open_page
      expect(current_path).to eq("/customers/#{customer_1.id}")
      expect(page).to have_content(item_1.name)
      expect(page).to have_content(item_1.price)
      expect(page).to have_content(item_2.name)
      expect(page).to have_content(item_2.price)
      expect(page).to have_content(supermarket_1.name)
    end
  end
end