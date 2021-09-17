class ChocolatesController < ApplicationController
  def index
    fetch_chocolate
  end

  def result
    fetch_chocolate
    @names_visible = true

    render :index
  end

  def show
    @chocolate = Chocolate.find(params[:id])
  end

  private

  def fetch_chocolate
    current_rank = 1
    @chocolates = []

    Chocolate.all.order(ranking: :desc).group_by(&:ranking).each do |_, cs|
      @chocolates += cs.map {|c| [current_rank, c] }
      current_rank += cs.count
    end
  end
end