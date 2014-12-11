class Show < ActiveRecord::Base
  belongs_to :chef
  has_many :recipes, as: :recipeable
  has_many :videos, as: :videoable
end
