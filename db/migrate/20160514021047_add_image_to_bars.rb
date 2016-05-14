class AddImageToBars < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :image_url, :string
  end
end
