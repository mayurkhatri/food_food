class RecipeChangeCookingAndPreparationTime < ActiveRecord::Migration
  def up
    change_column :recipes, :preparation_time, :string
    change_column :recipes, :cooking_time, :string
  end

  def down
    change_column :recipes, :preparation_time, :integer
    change_column :recipes, :cooking_time, :integer
  end
end
