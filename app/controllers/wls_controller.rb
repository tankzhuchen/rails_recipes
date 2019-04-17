class WlsController < ApplicationController


    def index
      @wls = Wl.all
    end


  end
