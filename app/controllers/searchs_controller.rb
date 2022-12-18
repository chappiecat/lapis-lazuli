class SearchsController < ApplicationController

  def search
    @model = params["model"]
    @content = params["content"]
    @method = params["method"]
    @genres = Genre.all
    #@items = Item.all
    @items = search_for(@content, @method)
  end

  private
  def search_for(content, method)
    #if model == 'item'
      if method == 'perfect'
        Item.where(name: content)
      else
        Item.where('name LIKE ?', '%'+content+'%')
      end
    #elsif model == 'post'
      #if method == 'perfect'
      #   Post.where(title: content)
      # else
      #   Post.where('title LIKE ?', '%'+content+'%')
      # end
    #end
  end
end

# def index
#     if params[:genre_id]
#       genre = Genre.find(params[:genre_id])
#       @items = genre.items
#     else
#       @items = Item.all
#     end
#     @genres = Genre.all
# end

