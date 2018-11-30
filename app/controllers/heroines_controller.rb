class HeroinesController < ApplicationController
  def index
    # @heroines = Heroine.all
    @heroines = Heroine.search(params[:search])
  end

  def show
    @powers = Power.all
    @heroine = Heroine.find(params[:id])
  end

  def new
    @powers = Power.all
    @heroine = Heroine.new
  end

  def create
    @powers = Power.all
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)

  end
end
