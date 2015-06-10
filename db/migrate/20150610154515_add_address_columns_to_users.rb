class AddAddressColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
