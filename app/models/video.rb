class Video < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :course
  belongs_to :show
end
