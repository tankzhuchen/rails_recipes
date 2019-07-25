class LszbsController < ApplicationController

 def index
   @zhibiaos = Zhibiao.all.order("id DESC").page(params[:page]).per(10)
@q = @zhibiaos.ransack(params[:q])

@zhibiaos = @q.result
  end

end
