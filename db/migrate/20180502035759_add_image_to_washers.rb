class AddImageToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :image, :string
  end
end
