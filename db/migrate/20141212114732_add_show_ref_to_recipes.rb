class AddShowRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :show, index: true
  end
end
