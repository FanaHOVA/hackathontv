class AddNationsidToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :sport_events, :nations_ids, :integer, array: true
  end
end
