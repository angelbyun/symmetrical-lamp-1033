class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @items = Item.all
    @supermarkets = Supermarket.all
  end
end