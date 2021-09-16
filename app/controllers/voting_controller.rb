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
    loser_id = ([params[:left_id], params[:right_id]] - [params[:choice]]).first

    Chocolate.transaction do
      winner, loser = Chocolate.lock.find([params[:choice], loser_id])
      # winner = Chocolate.find(params[:choice])
      # loser = Chocolate.find(loser_id)

      winner.ranking, loser.ranking = EloService.update_rankings(
        winner: winner.ranking,
        loser: loser.ranking
      )
      winner.save!
      loser.save!
    end

    redirect_to :root
  end
end
