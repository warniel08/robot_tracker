class ProductsController < ApplicationController

  def index
    @robots = Robot.where(inventory: true)
  end

  def show
    if Robot.exists?(params[:id])
      @robot = Robot.find(params[:id])
    else
      @robot = nil
    end
  end

end
