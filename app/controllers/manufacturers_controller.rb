class ManufacturersController < ActionController::Base
  def index
    @manufacturers = Manufacturer.all
  end
end
