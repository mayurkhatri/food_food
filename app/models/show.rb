class Show < ActiveRecord::Base
  belongs_to :chef
  has_many :recipes
  has_many :videos

  has_one :picture, as: :imageable
  accepts_nested_attributes_for :picture
end
