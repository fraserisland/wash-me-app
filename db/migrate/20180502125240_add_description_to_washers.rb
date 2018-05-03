class AddDescriptionToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :description, :string
  end
end
