class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps null: false
    end

    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :middle_name
      t.text :nickname
    end
  end
end
