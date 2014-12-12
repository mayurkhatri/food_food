class RemoveRecipeableFromRecipe < ActiveRecord::Migration
  def up
    remove_column :recipes, :recipeable_id
    remove_column :recipes, :recipeable_type
  end

  def down
    add_column :recipes, :recipeable_id, :integer
    add_column :recipes, :recipeable_type, :string
  end
end
