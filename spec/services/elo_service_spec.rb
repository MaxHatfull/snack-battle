require 'rails_helper'
# Suppose there is a live match on chess.com between two players
# rating1 = 1200, rating2 = 1000;
# P1 = (1.0 / (1.0 + pow(10, ((1000-1200) / 400)))) = 0.76
# P2 = (1.0 / (1.0 + pow(10, ((1200-1000) / 400)))) = 0.24

# And Assume constant K=30;

# CASE-1 : Suppose Player 1 wins:
# rating1 = rating1 + k*(actual – expected) = 1200+30(1 – 0.76) = 1207.2;
# rating2 = rating2 + k*(actual – expected) = 1000+30(0 – 0.24) = 992.8;

# Case-2 : Suppose Player 2 wins:
# rating1 = rating1 + k*(actual – expected) = 1200+30(0 – 0.76) = 1177.2;
# rating2 = rating2 + k*(actual – expected) = 1000+30(1 – 0.24) = 1022.8;
describe EloService do
  context "updates rankings correctly" do
    it "updates correctly when the better player wins" do
      new_winner, new_loser = EloService.update_rankings(winner: 1200, loser: 1000, k: 30)

      expect(new_winner).to be_within(0.05).of(1207.2)
      expect(new_loser).to be_within(0.05).of(992.8)
    end
    it "updates correctly when the worse player wins" do
      new_winner, new_loser = EloService.update_rankings(winner: 1000, loser: 1200, k: 30)

      expect(new_winner).to be_within(0.05).of(1022.8)
      expect(new_loser).to be_within(0.05).of(1177.2)
    end
  end
end
