class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @items=Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.genre_id = 0
    # binding.pry
    @item.save
    redirect_to admin_item_path(@item)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price)
  end

end
