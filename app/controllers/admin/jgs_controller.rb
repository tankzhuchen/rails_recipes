class Admin::JgsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout "jgss"

   def index
     @jgs = Jg.all
   end
  def new
    @jg = Jg.new
  end

 def edit
   @jg = Jg.find(params[:id])
 end

 def update
   @jg = Jg.find(params[:id])

   if @jg.update(jg_params)
     redirect_to admin_jgs_path
   else
     render :edit
   end
 end

  def create
    @jg = Jg.new(jg_params)

    if @jg.save
      redirect_to admin_jgs_path
    else
      render :new
    end
  end

  def destroy
  @jg = Jg.find(params[:id])
  @jg.destroy
  redirect_to admin_jgs_path
end

  private

  def jg_params
    params.require(:jg).permit(:title, :description, :quantity, :price, :piao, :time )
  end

end
