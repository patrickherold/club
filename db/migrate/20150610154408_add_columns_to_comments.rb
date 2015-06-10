class AddColumnsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :address, :string
    add_column :comments, :latitude, :float
    add_column :comments, :longitude, :float
  end
end
