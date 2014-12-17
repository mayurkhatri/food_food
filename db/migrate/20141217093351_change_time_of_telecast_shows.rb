class ChangeTimeOfTelecastShows < ActiveRecord::Migration
  def up
    change_column :shows, :time_of_telecast, :time
  end

  def down
    change_column :shows, :time_of_telecast, :string
  end
end
