class Admin::HomesController < ApplicationController
  def top
    @orders = Order.all
  end

  private

  def Order_params
    params.require(:order).permit(:payment_method, :address, :postal_code, :name, :total_payment, :shipping_fee)
  end

end
