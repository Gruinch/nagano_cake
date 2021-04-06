class Public::HomesController < ApplicationController
  def top
    @order_details = OrderDetail.all
    @order = @order_details.order
  end

  def about
  end
end
