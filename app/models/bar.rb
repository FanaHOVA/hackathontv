class Bar < ApplicationRecord
  has_many :game_bets

  def leaderboard
    leaderboard = {}
    game_bets.each do |bet|
      leaderboard[bet.user.id] += 1 if bet.check_winner
    end

    leaderboard.to_json
  end
end
