class ManufacturersController < ApplicationController

  include SessionHelper

  def index
    if !session_logged_in?
      redirect_to root_path
    else
      # if params[:sort_by] == "all"
      #   @manufacturers = Manufacturer.all
      # elsif params[:sort_by] == "manufacturers"
      #   @robots = Robot.all
      # end
      @manufacturers = Manufacturer.all
      render :index
    end
  end

  def show
    if !session_logged_in?
      redirect_to root_path
    else
      @manufacturer = Manufacturer.find(params[:id])
      render :show
    end
  end
end
