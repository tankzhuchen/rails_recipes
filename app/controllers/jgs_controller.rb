class JgsController < ApplicationController

  def index
    @jgs = Jg.all
    @tjs = Tj.all
  end

  def show
    @jgs = Jg.find(params[:id])
  end
end
