class CategoriesController < ApplicationController

  def index
    p "in index"
    @categories = Category.all
  end

  def categories
    p "in categories"  
  end

  def show
    @category = Category.find_by_id(params[:id])
    @posts = @category.posts
  end

end
