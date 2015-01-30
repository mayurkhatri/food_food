class RecipesChangeIngredientsPreparationMethod < ActiveRecord::Migration
  def up
    change_column :recipes, :ingredients, :text
    change_column :recipes, :preparation_method, :text
  end

  def down
    change_column :recipes, :ingredients, :string
    change_column :recipes, :preparation_method, :string
  end
end
