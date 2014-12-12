class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :course
  belongs_to :chef
  belongs_to :show
end
  














