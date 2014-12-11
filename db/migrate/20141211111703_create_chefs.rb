class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.text :about
      t.text :achievement

      t.timestamps
    end
  end
end
