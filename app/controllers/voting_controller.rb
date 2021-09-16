class VotingController < ApplicationController
  # GET /show
  def show
    chocolates = Chocolate.all
    random_chocolates = chocolates.shuffle

    @left_choice = random_chocolates.first
    @right_choice = random_chocolates.second
  end

  # POST /vote
  def vote
    winner = Chocolate.find(params[:choice])
    loser_id = [params[:left_id], params[:right_id]] - [params[:choice]]
    loser = Chocolate.find(loser_id.first)

    winner.ranking, loser.ranking = EloService.update_rankings(
      winner: winner.ranking,
      loser: loser.ranking)
    winner.save!
    loser.save!

    redirect_to :root
  end
end
