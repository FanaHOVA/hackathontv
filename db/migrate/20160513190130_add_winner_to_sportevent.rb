class AddWinnerToSportevent < ActiveRecord::Migration[5.0]
  def change
    add_column :sport_events, :winner_id, :integer
  end
end
