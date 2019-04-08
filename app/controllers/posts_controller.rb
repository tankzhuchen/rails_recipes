class PostsController < ApplicationController


  def index
    @posts = Post.all.order("id DESC").page(params[:page]).per(8)
  end

  def show
   @post = Post.find(params[:id])
   @posts = Post.all.order("RANDOM()").limit(4)

  end

  def like
    @post = Post.find(params[:id])
    unless @post.find_like(current_user)  # 如果已经按讚过了，就略过不再新增
      Like.create( :user => current_user, :post => @post)
    end

  end

  def unlike
    @post = Post.find(params[:id])
    like = @post.find_like(current_user)
    like.destroy

    render "like"
  end
end
