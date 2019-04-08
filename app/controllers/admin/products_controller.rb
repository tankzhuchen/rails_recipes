class Admin::ProductsController < ApplicationController
  def new
   @posts = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:product).permit(:title, :description, :quantity, :price)
  end
end
