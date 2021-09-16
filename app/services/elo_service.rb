class EloService
  def self.update_rankings(winner:, loser:, k: 30)
    winner_p = (1.0 / (1.0 + 10 ** ((loser - winner) / 400.0)))
    loser_p = 1 - winner_p

    new_winner = winner + k * (1 - winner_p)
    new_loser = loser + k * (0 - loser_p)

    [new_winner, new_loser]
  end
end
