class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :day_of_telecast
      t.datetime :time_of_telecast
      t.string :description

      t.timestamps
    end
  end
end
