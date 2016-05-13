class AddFlagToNations < ActiveRecord::Migration[5.0]
  def change
    add_column :nations, :flag_url, :string
  end
end
