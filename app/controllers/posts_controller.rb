class PostsController < ApplicationController

  def index

  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    p "PARAMS ARE" + params.to_s
    @category = Category.find_by_id(params[:category_id])
    @post = @category.posts.new
    p @post
  end

  def create
    p params[:post]
    category = Category.find(params[:category_id])
    post = category.posts.create(params.require(:post).permit(:title, :email, :content, :price, :url))
    redirect_to category_post_path(category, post)
  end

end
