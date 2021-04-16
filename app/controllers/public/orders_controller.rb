class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!
  def new
    @order = Order.new
    @order.customer_id = current_customer.id
  end

  def confirm
    @cart_items = current_customer.cart_items #ログイン中のカスタマーのカートの情報
    @orders = current_customer.orders
    @payment_method = params[:order][:payment_method]
    if params[:order][:address_order] == '0'
      @address = current_customer.address
      @postal_code = current_customer.postal_code
      @name = current_customer.last_name
    else
      @address = params[:order][:address]
      @postal_code = params[:order][:postal_code]
      @name = params[:order][:name]
    end
    @shipping_fee = "300"
  end

  def complete
  end

  def create


  end

  def index
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :payment_method, :address, :postal_code, :name,
    :total_payment, :shipping_fee)
  end

end
