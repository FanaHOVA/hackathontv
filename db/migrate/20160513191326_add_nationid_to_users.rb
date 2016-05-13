class AddNationidToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nation_id, :integer
  end
end
