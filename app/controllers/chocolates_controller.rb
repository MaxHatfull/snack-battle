class ChocolatesController < ApplicationController
  def index
    @chocolates = Chocolate.all
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end
end