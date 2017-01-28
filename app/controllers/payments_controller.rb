class PaymentsController < ApplicationController
def create
end

def new
  @payment = {Payment.new}
end
end
