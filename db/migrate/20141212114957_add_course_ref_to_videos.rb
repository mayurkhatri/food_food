class AddCourseRefToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :course, index: true
  end
end
