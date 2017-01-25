class RobotsController < ApplicationController

  def index
    @robots = Robots.all
  end

end
