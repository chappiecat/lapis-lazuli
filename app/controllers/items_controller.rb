class ItemsController < ApplicationController

  def new
    @items = Item.find(params)
    @item = Item.new
    @genres = Genre.all
  end


  def index
    @items = Item.page(params[:page])
    @genres = Genre.all
  end


  def show
    @item = Item.find(params[:id])
    @cart_item =CartItem.new
    @genres = Genre.all
  end


  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :is_active, :genre_id, :image)
  end

end
