class CreateBars < ActiveRecord::Migration[5.0]
  def change
    create_table :bars do |t|
      t.string :address
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
