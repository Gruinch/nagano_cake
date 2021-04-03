class Admin::HomesController < ApplicationController
  def top
    @order_details=OrderDetail.includes(:orders => :customers)
  end

end
