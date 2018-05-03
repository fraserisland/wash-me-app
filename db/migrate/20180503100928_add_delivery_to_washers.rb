class AddDeliveryToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :delivery, :string
  end
end
