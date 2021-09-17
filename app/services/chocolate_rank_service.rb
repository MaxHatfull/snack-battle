class ChocolateRankService
  def self.generate
    current_rank = 1
    chocolates = []

    Chocolate.all.order(ranking: :desc).group_by(&:ranking).each do |_, cs|
      chocolates += cs.map { |c| [current_rank, c] }
      current_rank += cs.count
    end
    chocolates
  end
end