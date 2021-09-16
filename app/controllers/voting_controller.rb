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

  end
end
