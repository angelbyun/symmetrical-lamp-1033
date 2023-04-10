class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @items = Item.all
    @supermarkets = Supermarket.all
  end

  def create
    @customer = Customer.find(params[:id])
    Item.create(name: params[:name], price: params[:price])
    redirect_to "/customers/#{@customer.id}"
  end
end