class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @cart_items = current_customer.cart_items
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id

    @cart_item.save
    redirect_to cart_items_path
  end


  def update
      @cart_item.update(amount: params[:amount].to_i)
      redirect_to current_cart
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
     @cart_items = current_customer.cart_items
     @cart_items.destroy_all
     redirect_to cart_items_path
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:amount, :item_id)
  end

end
