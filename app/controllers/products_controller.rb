class ProductsController < ApplicationController

  def index
    if params[:sort_by_manufacturer] == "true"
      @manufacturers = Manufacturer.all
    else
      @robots = Robot.where(inventory: true)
    end
  end

  def show
    if Robot.exists?(params[:id])
      @robot = Robot.find(params[:id])
    else
      @robot = nil
    end
  end

end
