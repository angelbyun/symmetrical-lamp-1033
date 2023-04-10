class ItemsController < ApplicationController
  def index
    @items = Item.all
    @supermarkets = Supermarket.all
  end
end