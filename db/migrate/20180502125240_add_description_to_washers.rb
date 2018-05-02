class AddDescriptionToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :desription, :string
  end
end
