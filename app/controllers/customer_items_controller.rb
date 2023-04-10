class CustomerItemsController < ApplicationController
  def create
    @customer_items = CustomerItem.create(customer_item_params)
    redirect_to "/customers/#{@customer_items.customer_id}"
  end
  
  private
  def customer_item_params
    params.require(:customer_item).permit(:customer_id, :item_id)
  end
end