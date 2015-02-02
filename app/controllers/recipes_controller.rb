class RecipesController < ApplicationController
  respond_to :json, :html
  
  before_action :find_recipeable, only: [:index, :show]

  def index
    @recipes = Recipe.find_all_recipes(@recipeable, params[:search])
    if @recipeable.present?
      respond_with(@recipeable, @recipes)
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    respond_with(@recipeable, @recipe)
  end

  def new
  end

  def category_index
    @category = params[:category]
    recipes = Recipe.find_recipes(@category)
    @grouped_recipes = Recipe.group_recipe(@category, recipes)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :preparation_method,\
	 :preparation_time, :cooking_time)
  end

  def find_recipeable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return @recipeable = $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
