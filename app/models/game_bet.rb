class GameBet < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  belongs_to :bar

  def check_winner
    return true if sport_event.winner_id == winner_id
    false
  end
end
