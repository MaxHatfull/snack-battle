class VotingController < ApplicationController
  # GET /show
  def show
    random_chocolates = Chocolate.find(Chocolate.pluck(:id).sample(2))

    @left_choice = random_chocolates.first
    @right_choice = random_chocolates.second
  end

  # POST /vote
  def vote
    if ENV["CLOSED"].present?
      head :gone
      return
    end

    loser_id = ([params[:left_id], params[:right_id]] - [params[:choice]]).first

    Chocolate.transaction do
      winner, loser = Chocolate.lock.find([params[:choice], loser_id])

      winner.ranking, loser.ranking = EloService.update_rankings(
        winner: winner.ranking.to_f,
        loser: loser.ranking.to_f,
      )
      winner.match_count += 1
      loser.match_count += 1
      winner.save!
      loser.save!
    end

    chocolates = ChocolateRankService.generate
    Turbo::StreamsChannel.broadcast_replace_to(
      "chocolates_public",
      target: "ranking-table",
      partial: "chocolates/ranking_table",
      locals: {
        names_visible: false,
        chocolates: chocolates
      }
    )
    Turbo::StreamsChannel.broadcast_replace_to(
      "chocolates_secret",
      target: "ranking-table",
      partial: "chocolates/ranking_table",
      locals: {
        names_visible: true,
        chocolates: chocolates
      }
    )

    redirect_to :root
  end
end
