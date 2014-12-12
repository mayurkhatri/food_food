class Cuisine < ActiveRecord::Base
  has_many :recipes
  has_many :videos
end
