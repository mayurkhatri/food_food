class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :preparation_method
      t.integer :preparation_time
      t.integer :cooking_time

      t.timestamps
    end
  end
end
