class AddRecipeableToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :recipeable_id, :integer
    add_column :recipes, :recipeable_type, :string
  end
end
