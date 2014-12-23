class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :course
  belongs_to :chef
  belongs_to :show

  has_one :picture, as: :imageable
  accepts_nested_attributes_for :picture
end  














