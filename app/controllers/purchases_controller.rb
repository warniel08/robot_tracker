class PurchasesController < ApplicationController

  include SessionHelper
  include MoneyConverterHelper

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

  def destroy
    robot = Robot.find(params[:id])
    Robot.destroy(robot)
    redirect_to purchases_path(robot), :notice => "Order has been canceled"
  end

end
