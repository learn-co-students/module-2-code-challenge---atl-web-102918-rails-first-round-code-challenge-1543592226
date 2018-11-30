class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def update
    @heroine = Heroine.new(heroine_params)
    if @heroine.update
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end 

  private

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power)
    end
end
