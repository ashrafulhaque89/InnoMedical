class ChargesController < ApplicationController
   before_action :authenticate_user!

 def new
end

def create
  @amount = 7000

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

 def charge_params
      params.require(:charges).permit(:schedule_id)
    end

end
