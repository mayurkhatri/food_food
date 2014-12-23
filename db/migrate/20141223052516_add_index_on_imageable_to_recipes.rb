class AddIndexOnImageableToRecipes < ActiveRecord::Migration
  def self.up
    add_index :recipes, [:imageable_type, :imageable_id]
  end

  def self.down

  end
end
