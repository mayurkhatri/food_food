class Show < ActiveRecord::Base
  belongs_to :chef
  has_many :recipes
  has_many :videos
end
