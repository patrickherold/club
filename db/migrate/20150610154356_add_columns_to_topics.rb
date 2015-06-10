class AddColumnsToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :address, :string
    add_column :topics, :latitude, :float
    add_column :topics, :longitude, :float
  end
end
