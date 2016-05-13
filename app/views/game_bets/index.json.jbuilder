json.array!(@game_bets) do |game_bet|
  json.extract! game_bet, :id, :bar_id, :user_id
  json.url game_bet_url(game_bet, format: :json)
end
