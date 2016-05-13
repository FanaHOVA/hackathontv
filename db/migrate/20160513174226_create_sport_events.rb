class CreateSportEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :sport_events do |t|
      t.string :name
      t.string :location
      t.string :sport
      t.datetime :time

      t.timestamps
    end
  end
end
