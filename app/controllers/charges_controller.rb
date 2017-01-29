class ChargesController < ApplicationController
  include MoneyConverterHelper
  include SessionHelper

  def create
    @robot = Robot.find(params[:id])
    @robot.update_attributes(user_id: session_current_user.id)

    Stripe.api_key = ENV['TEST_SECRET_KEY']

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => convert_to_stripe_price(@robot.model.price),
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
