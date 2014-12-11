class Cuisine < ActiveRecord::Base
  has_many :recipes, as: :recipeable
  has_many :videos, as: :videoable
end
