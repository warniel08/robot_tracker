class ManufacturersController < ApplicationController

  include SessionHelper

  def index
    if !session_logged_in?
      redirect_to root_path
    else
      @manufacturers = Manufacturer.all
      render :index
    end
  end

end
