class PurchasesController < ApplicationController

  include SessionHelper
  include MoneyConverterHelper

  def index
    @robots = Robot.where(inventory: true)
  end

  def show
  end

end
