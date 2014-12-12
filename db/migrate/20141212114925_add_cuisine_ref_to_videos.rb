class AddCuisineRefToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :cuisine, index: true
  end
end
