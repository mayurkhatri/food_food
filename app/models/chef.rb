class Chef < ActiveRecord::Base
  has_many :shows
  has_many :recipes, as: :recipeable
  has_many :videos, as: :videoable
end
