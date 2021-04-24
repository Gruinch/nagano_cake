class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    case params[:order_sort]
    when '1'
      @customer = Customer.find(params[:customer_id])
      @orders = @customer.orders
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
