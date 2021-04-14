class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!
  def new
    @order = Order.new
    @order.customer_id = current_customer.id
  end

  def confirm
    #@cart_itmes = ログイン中のカスタマーのカートの情報
    @payment_method = params[:order][:payment_method]
    p @payment_method
    p '-------------------------------'
    p '-------------------------------'
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
