class YellsController < ApplicationController
  def show
    @yell = Yell.find(params[:id])
  end
end
