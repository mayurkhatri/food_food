class AddShowRefToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :show, index: true
  end
end
