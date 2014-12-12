class AddCuisineRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :cuisine, index: true
  end
end
