class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :preparation_method,\
	 :preparation_time, :cooking_time)
  end
end
