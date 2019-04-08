class JgsController < ApplicationController
  
  def index
    @jgs = Jg.all
  end

  def show
    @jgs = Jg.find(params[:id])
  end
end
