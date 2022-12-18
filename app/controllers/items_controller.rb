class ItemsController < ApplicationController

  def new
    @item = Item.new
    @genres = Genre.all
  end


  def index
    if params[:genre_id]
      genre = Genre.find(params[:genre_id])
      @items = genre.items
    else
      @items = Item.all
    end
    @genres = Genre.all
  end


  def show
    @item = Item.find(params[:id])
    @cart_item =CartItem.new
    @genres = Genre.all
   #@genres.item.name = Genre.new
  end


  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    @item.customer_id = current_customer.id
    @item.save!
    redirect_to items_path(@item.id)
  end


  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to item_path
  end


  def update
@item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :is_active, :genre_id, :image)
  end

end
