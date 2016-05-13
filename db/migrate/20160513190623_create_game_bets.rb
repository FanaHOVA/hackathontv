class CreateGameBets < ActiveRecord::Migration[5.0]
  def change
    create_table :game_bets do |t|
      t.integer :user_id
      t.integer :sport_event_id
      t.integer :winner_id

      t.timestamps
    end
  end
end
