class AddBaridToGameBets < ActiveRecord::Migration[5.0]
  def change
    add_column :game_bets, :bar_id, :integer
  end
end
