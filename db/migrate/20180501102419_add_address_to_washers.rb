class AddAddressToWashers < ActiveRecord::Migration[5.2]
  def change
    add_column :washers, :zipcode, :string
    add_column :washers, :city, :string
    add_column :washers, :country, :string
  end
end
