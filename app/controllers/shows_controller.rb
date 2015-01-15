class ShowsController < ApplicationController
  def index
    @shows = Show.includes(:picture).all
  end

  def show
  end

  private

  def show_params
    params.require(:show).permit(:name, picture_attributes: [:name, :image])
  end
end
