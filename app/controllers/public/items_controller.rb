class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.count
  end

  def show
    @item = Item.find(params[:id])
  end


  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price)
  end

end
