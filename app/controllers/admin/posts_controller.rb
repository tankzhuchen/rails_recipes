class Admin::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout "admin"

  def index
    @posts = Post.all.order("id DESC")
  end

  def new
    @post = Post.new
  end

  def edit
   @post = Post.find(params[:id])
 end

 def update
   @post = Post.find(params[:id])

   if @post.update(post_params)
     redirect_to admin_posts_path
   else
     render :edit
   end
 end

 def create
      @post = Post.new(post_params)
      @post.user = current_user
      @post.save!

      redirect_to posts_path
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to admin_posts_path
end


  private

  def post_params
    params.require(:post).permit(:content, :title, :description, :quantity, :price, :image)
  end
end
