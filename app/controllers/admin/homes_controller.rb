class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    if @order.id == order(params[:id])
      @order.address = current_customer.address
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.name
    else
      @orders = Order.all
    end
  end

  def show

  end

  private

  def order_params
    params.require(:order).permit( :payment_method, :address, :postal_code, :name, :total_payment, :shipping_fee)
  end

end
