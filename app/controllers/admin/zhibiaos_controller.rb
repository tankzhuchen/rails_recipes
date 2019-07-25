class Admin::ZhibiaosController < ApplicationController

  before_action :authenticate_user!
  before_action :admin_required


    def new
      @zhibiao = Zhibiao.new
    end

    def index
          @zhibiaos = Zhibiao.all
      @q = @zhibiaos.ransack(params[:q])

     @zhibiaos = @q.result
   end

    def edit
      @zhibiao = Zhibiao.find(params[:id])
    end

    def update
      @zhibiao = Zhibiao.find(params[:id])

      if @zhibiao.update(zhibiao_params)
        redirect_to admin_zhibiaos_path
      else
        render :edit
      end
    end

    def create
      @zhibiao = Zhibiao.new(zhibiao_params)

      if @zhibiao.save
        redirect_to admin_zhibiaos_path
      else
        render :new
      end
    end


      def destroy
      @zhibiao = Zhibiao.find(params[:id])
      @zhibiao.destroy
      redirect_to admin_zhibiaos_path
    end

    private

    def zhibiao_params
      params.require(:zhibiao).permit(:sj, :cj, :xh, :ss, :yb, :nz, :qd, :sd, :md, :ft, :zf, :ys, :wg, :yh, :sz, :lh, :image)
    end




end
