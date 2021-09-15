class VotingController < ApplicationController
  # GET /show
  def show
    @left_choice = Chocolate.new(id: 1, name: "KitKat", image_url: "https://placekitten.com/200/300")
    @right_choice = Chocolate.new(id: 2, name: "Green & Blacks", image_url: "https://picsum.photos/200/300")
  end

  # POST /vote
  def vote

  end
end
