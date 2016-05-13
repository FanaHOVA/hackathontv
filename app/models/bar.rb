class Bar < ApplicationRecord
  has_many :game_bets

  def leaderboard
    leaderboard = {}
    game_bets.each do |bet|
      mail_symbol = bet.user.name
      if leaderboard[mail_symbol]
        leaderboard[mail_symbol] += 1 if bet.check_winner
      else
        leaderboard[mail_symbol] = 1
      end
    end
    leaderboard
  end

  def top_three
    leaderboard.sort_by { |_key, value| value }.reverse.first(3)
  end
end
