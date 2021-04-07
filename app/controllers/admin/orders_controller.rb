class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @customer = @order.customer
    @order_details = @order.order_details
  end

  def update
  end

  def order_params
    params.require(:order).permit( :payment_method, :address, :postal_code, :name,
    :total_payment, :shipping_fee)
  end

end
