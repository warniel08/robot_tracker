class PurchasesController < ApplicationController

  include SessionHelper

  def index
    @robots = Robot.where(inventory: true)
  end

  def show
  end

end
