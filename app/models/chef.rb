class Chef < ActiveRecord::Base
  has_many :shows
  has_many :recipes
  has_many :videos

  has_one :picture, as: :imageable
end
