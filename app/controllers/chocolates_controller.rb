class ChocolatesController < ApplicationController
  def index
    current_rank = 1
    @chocolates = []

    Chocolate.all.order(ranking: :desc).group_by(&:ranking).each do |_, cs|
      @chocolates += cs.map {|c| [current_rank, c] }
      current_rank += cs.count
    end
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end
end