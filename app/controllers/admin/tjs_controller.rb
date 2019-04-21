class Admin::TjsController < ApplicationController

  before_action :authenticate_user!
  before_action :admin_required
    def new
      @tj = Tj.new
    end

    def index
      @tjs = Tj.all
    end

    def edit
      @tj = Tj.find(params[:id])
    end

    def update
      @wl = Tj.find(params[:id])

      if @tj.update(wl_params)
        redirect_to admin_tjs_path
      else
        render :edit
      end
    end

    def create
      @tj = Tj.new(tj_params)

      if @tj.save
        redirect_to admin_tjs_path
      else
        render :new
      end
    end


      def destroy
      @tj = Tj.find(params[:id])
      @tj.destroy
      redirect_to admin_tjs_path
    end

    private

    def tj_params
      params.require(:tj).permit(:title, :description, :quantity, :price, :time)
    end


end
