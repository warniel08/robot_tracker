class RobotsController < ApplicationController

  def index
    @inventory_robots = Robot.where("inventory = true").order("created_at DESC")
    @ordered_robots = Robot.where("inventory = false").order("created_at DESC")
  end

  def show
    if Robot.exists?(params[:id])
      @robot = Robot.find(params[:id])
    else
      @robot = nil
    end
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def update
    @robot = Robot.find(params[:id])
    if @robot.update_attributes({inventory: params[:inventory], designation: params[:designation]})
      redirect_to robot_path(@robot.id), :destroyed => "Your robot's status has been updated"
    else
      render "edit"
    end
  end

  def destroy
    robot = Robot.find(params[:id])
    Robot.destroy(robot)
    redirect_to robot_path(robot), :notice => "Robot has been destroyed"
  end

  # private

  #   def bot_params
  #     params.require(:robot).permit(:designation, :inventory, :model_id)
  #   end
end
