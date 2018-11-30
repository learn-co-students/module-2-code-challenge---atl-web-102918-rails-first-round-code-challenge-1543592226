class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @powers = Power.all 
    @heroine = Heroine.new(heroines_params)
    byebug
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else 
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  private

  def heroines_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
