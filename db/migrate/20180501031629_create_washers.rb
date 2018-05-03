class CreateWashers < ActiveRecord::Migration[5.2]
  def change
    create_table :washers do |t|
      t.references :user, foreign_key: true
      t.string :cost
      t.string :address
      t.float :latitude
      t.float :longitude
      add_column :washers, :zipcode, :string
      add_column :washers, :city, :string
      add_column :washers, :country, :string
      add_column :washers, :image, :string
      add_column :washers, :description, :string

      t.timestamps
    end
  end
end
