class RobotsController < ApplicationController

  include SessionHelper

  def index
    if !session_logged_in?
      redirect_to root_path
    else
      @inventory_robots = Robot.where("inventory = true").order("created_at DESC")
      @ordered_robots = Robot.where("inventory = false").order("created_at DESC")
    end
  end

  def show
    if !session_logged_in?
      redirect_to root_path
    else
      if Robot.exists?(params[:id])
        @robot = Robot.find(params[:id])
      else
        @robot = nil
      end
    end
  end

  def create
    @robot = Robot.new(model_id: params[:model_id])
    p params[:model_id]
    p @robot
    if @robot.save
      redirect_to robot_path(@robot.id), notice: "New Robot Ordered"
    else
      redirect_to manufacturer_path(@robot.model.manufacturer), notice: "Robot Not Saved"
    end
  end

  def edit
    if !session_logged_in?
      redirect_to root_path
    else
      @robot = Robot.find(params[:id])
    end
  end

  def update
    @robot = Robot.find(params[:id])
    if @robot.update_attributes({inventory: params[:inventory], designation: params[:designation]})
      redirect_to robot_path(@robot.id), :notice => "Your robot's status has been updated"
    else
      redirect_to edit_robot_path(@robot.id), :notice => "You cannot designate a robot until it is moved to your inventory."
    end
  end

  def destroy
    robot = Robot.find(params[:id])
    Robot.destroy(robot)
    redirect_to robot_path(robot), :notice => "Robot has been destroyed"
  end

  # private
  #
  #   def bot_params
  #     params.require(:robot).permit(:model_id)
  #   end
end
