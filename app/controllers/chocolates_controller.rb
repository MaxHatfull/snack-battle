class ChocolatesController < ApplicationController
  def index
    @chocolates = ChocolateRankService.generate
  end

  def result
    @chocolates = ChocolateRankService.generate
    @names_visible = true

    render :index
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end
end