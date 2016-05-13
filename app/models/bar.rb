class Bar < ApplicationRecord
  has_many :game_bets

  def leaderboard
    leaderboard = {}
    game_bets.each do |bet|
      leaderboard[bet.user.id] += 1 if bet.check_winner
    end

    leaderboard
  end

  def top_three
    top_three={}
    sorted = leaderboard.sort{|l, r| l[1]<=>r[1]}
    top_three[:first]=sorted.first[1]
    top_three[:second]=sorted.second[1]
    top_three[:third]=sorted.third[1]

    top_three
  end

end
