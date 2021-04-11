class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @orders = Order.all
  end
  
  def show
    
  end

  private

  def order_params
    params.require(:order).permit( :payment_method, :address, :postal_code, :name, :total_payment, :shipping_fee)
  end

end
