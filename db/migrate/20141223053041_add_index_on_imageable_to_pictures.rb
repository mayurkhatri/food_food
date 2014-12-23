class AddIndexOnImageableToPictures < ActiveRecord::Migration
  def self.up
    add_index :pictures, [:imageable_type, :imageable_id]
  end

  def self.down
  end
end
