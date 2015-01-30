class AddChefRefToShows < ActiveRecord::Migration
  def change
    add_reference :shows, :chef, index: true
  end
end
