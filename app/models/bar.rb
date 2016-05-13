class Bar < ApplicationRecord
  has_many :game_bets

  def leaderboard
    leaderboard = {}
    game_bets.each do |bet|
      mail_symbol = bet.user.email
      if leaderboard[mail_symbol]
        leaderboard[mail_symbol] += 1 if bet.check_winner
      else
        leaderboard[mail_symbol] = 1
      end
    end
    leaderboard
  end
end
