class AddCourseRefToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :course, index: true
  end
end
