class AddColumnsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :address, :string
    add_column :categories, :latitude, :float
    add_column :categories, :longitude, :float
  end
end
