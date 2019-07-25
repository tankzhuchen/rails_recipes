class ZhibiaosController < ApplicationController

  def index
    @zhibiaos = Zhibiao.all.order("id DESC").page(params[:page]).per(5)
    @q = @zhibiaos.ransack(params[:q])

   @zhibiaos = @q.result
 end


  def show
   @zhibiao = Zhibiao.find(params[:id])
  end
end
