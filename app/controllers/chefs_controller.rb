class ChefsController < ApplicationController
  def index
    @chefs = Chef.includes(:picture).all
  end

  def show
  end

  private

  def chef_params
    params.require(:chef).permit(:name, picture_attributes: [:name, :image])
  end
end
