class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @order = Order.find(params[:id])
    @customer = @order.customer
    @order_details = @order.order_details
  end
  
  def index
  end 

  def update
    @order = Order.find(params[:id])
    @order = @order.update(order_params)
    redirect_to admin_order_path
  end

  def order_params
    params.require(:order).permit( :payment_method, :address, :postal_code, :name,
    :total_payment, :shipping_fee, :orders_status)
  end

end
