class RemoveVideoableFromVideo < ActiveRecord::Migration
  def up
    remove_column :videos, :videoable_id
    remove_column :videos, :videoable_type
  end

  def down
    add_column :videos, :videoable_id, :integer
    add_column :videos, :vidoeable_type, :string
  end
end
