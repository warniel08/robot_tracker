class RobotsController < ApplicationController

  def index
    @inventory_robots = Robot.where("inventory = true").order("created_at DESC")
    @ordered_robots = Robot.where("inventory = false").order("created_at DESC")
    # Person.where("administrator = 1").order("created_on DESC").find(1)
  end

  def show
    @robot = Robot.find(params[:id])
  end

end
