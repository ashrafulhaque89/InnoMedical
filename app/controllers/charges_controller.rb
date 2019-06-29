class ChargesController < ApplicationController
   before_action :authenticate_user!

 def new
end

def create
  @charge = Charge.new(schedule_params.merge(:schedule => current_user.patient_profile.schedule))
  @amount = charge.schedule.cost

  customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
