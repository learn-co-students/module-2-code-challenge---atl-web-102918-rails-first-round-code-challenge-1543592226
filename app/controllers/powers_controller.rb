class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  # def search
  #   @power = Power.find_by name:(params[:id])
  # end
  private
  def power_params
    params.require(:power).permit(:power, :heroine)
  end
end
