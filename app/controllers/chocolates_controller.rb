class ChocolatesController < ApplicationController
  def index
    @closed = ENV["CLOSED"].present?
    @chocolates = ChocolateRankService.generate
  end

  def result
    @closed = ENV["CLOSED"].present?
    @chocolates = ChocolateRankService.generate
    @names_visible = true

    render :index
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end
end