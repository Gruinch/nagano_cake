class Admin::HomesController < ApplicationController
  def top
    @order_details=OrderDetail.includes(:order => :customer)
  end

end
