class RobotsController < ApplicationController

  def index
    @robots = Robot.all
  end

end
