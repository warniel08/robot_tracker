class RobotsController < ApplicationController

  def index
    @inventory_robots = Robot.where("inventory = true").order("created_at DESC")
    @ordered_robots = Robot.where("inventory = false").order("created_at DESC")
    # Person.where("administrator = 1").order("created_on DESC").find(1)
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def update
    @robot = Robot.find(params[:id])
    if @robot.update_attributes({inventory: params[:inventory], designation: params[:designation]})
      redirect_to robot_path(@robot.id), :notice => "Your robot's status has been updated"
    else
      render "edit"
    end
  end

  # private

  #   def bot_params
  #     params.require(:robot).permit(:designation, :inventory, :model_id)
  #   end
end
