class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @customer = @order.customer
    @order_details = @order.order_details
    @item = @item.order_details
  end

  def update
  end
end
