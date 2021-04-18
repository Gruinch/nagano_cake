class Admin::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!

  def create
  end

  def update
  end
  
  def order_detail_params
    params.require(:order_detail).permit(:item_id, :order_id, :price, :amount)
  end

  
end
