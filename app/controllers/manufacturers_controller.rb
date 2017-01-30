class ManufacturersController < ApplicationController

  include SessionHelper

  def index
    if !session_logged_in?
      redirect_to root_path
    else
      if admin?
        @manufacturers = Manufacturer.all
        render :index
      else
        redirect_to session_current_user
      end
    end
  end

end
