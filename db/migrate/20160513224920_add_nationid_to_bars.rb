class AddNationidToBars < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :nation_id, :integer
  end
end
