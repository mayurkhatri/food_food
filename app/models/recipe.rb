class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :course
  belongs_to :chef
  belongs_to :show

  has_one :picture, as: :imageable
  accepts_nested_attributes_for :picture

  def self.find_all_recipes(recipeable, search)
    if search.present?
      search(search)
    else
      recipeable.present? ? recipeable.recipes.includes(:picture) : Recipe.includes(:picture).all
    end
  end
 
  def self.find_recipes(category)
    if category.eql?("cuisine")
      recipes = Recipe.includes(:picture, :cuisine).order('name ASC')
    elsif category.eql?("course")
      recipes = Recipe.includes(:picture, :course).order('name ASC')
    elsif category.eql?("show")
      recipes = Recipe.includes(:picture, :show).order('name ASC')
    end
  end
 
  def self.group_recipe(category, recipes)
    if category.eql?("cuisine")
      return recipes.group_by(&:cuisine)
    recipes = Recipe.includes(:picture, :cuisine).order('name ASC')
    elsif category.eql?("course")
      return recipes.group_by(&:course)
    elsif category.eql?("show")
      return recipes.group_by(&:show)
    end
  end

  def self.search(search)
    Recipe.includes(:picture).where('LOWER(name) LIKE ?', "%#{search.downcase}%")
  end
end
 
