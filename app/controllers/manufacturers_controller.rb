class ManufacturersController < ApplicationController

  include SessionHelper

  def index
    if !session_logged_in?
      redirect_to root_path
    else
      @manufacturers = Manufacturer.all
    end
  end

  def show
    if !session_logged_in?
      redirect_to root_path
    else
      @manufacturer = Manufacturer.find(params[:id])
    end
  end
end
