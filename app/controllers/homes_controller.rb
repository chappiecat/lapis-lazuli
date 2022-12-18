class HomesController < ApplicationController

  def top
    @items = Item.order('id DESC').limit(5)
    #@genres = Genre.all
    #@genres = @genres = Genre.all
     if params[:genre_id]
      genre = Genre.find(params[:genre_id])
      @items = genre.items
    else
      @items = Item.all
    end
    @genres = Genre.all

  end

    # ASCだと古い順でDESCで新着順

  def about
    @genres = @genres = Genre.all
  end

   private

  def item_params
    params.require(:item).permit(:name, :description, :price, :is_active, :genre_id, :image)
  end
end
