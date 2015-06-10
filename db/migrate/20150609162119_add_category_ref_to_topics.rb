class AddCategoryRefToTopics < ActiveRecord::Migration
  def change
    add_reference :topics, :category, index: true, foreign_key: true
  end
end
