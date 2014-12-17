class ChangeColumnDescriptionShows < ActiveRecord::Migration
  def up
    change_column :shows, :description, :text
  end

  def down
    change_column :shows, :description, :string 
  end
end
