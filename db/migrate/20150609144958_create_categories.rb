class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :first_name
    end
  end
end
