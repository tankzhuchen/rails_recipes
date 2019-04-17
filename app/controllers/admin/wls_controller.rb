class Admin::WlsController < ApplicationController
before_action :authenticate_user!
before_action :admin_required
  def new
    @wl = Wl.new
  end

  def index
    @wls = Wl.all
  end

  def edit
    @wl = Wl.find(params[:id])
  end

  def update
    @wl = Wl.find(params[:id])

    if @wl.update(wl_params)
      redirect_to admin_wls_path
    else
      render :edit
    end
  end

  def create
    @wl = Wl.new(wl_params)

    if @wl.save
      redirect_to admin_wls_path
    else
      render :new
    end
  end

  private

  def wl_params
    params.require(:wl).permit(:title, :description, :quantity, :price)
  end

end
