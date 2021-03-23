class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
  end
  
  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.new(params.require(:camper).permit(:name, :age))
    @camper.save
    redirect_to camper_path(@camper.id)
  end




end
