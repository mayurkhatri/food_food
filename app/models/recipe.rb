class Recipe < ActiveRecord::Base
  belongs_to :recipeable, polymorphic: true
end
