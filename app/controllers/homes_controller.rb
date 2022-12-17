class HomesController < ApplicationController

  def top
    @genres = @genres = Genre.all
    
    
  end
    # @items = Item.all.order('id DESC').limit(4)
    # @genres = Genre.all
    # ASCだと古い順でDESCで新着順

  def about
    @genres = @genres = Genre.all
  end

   private

  def item_params
    params.require(:item).permit(:name, :description, :price, :is_active, :genre_id, :image)
  end
end
