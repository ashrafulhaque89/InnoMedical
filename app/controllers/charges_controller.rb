class ChargesController < ApplicationController
   before_action :authenticate_user!

  def success
    
  end

  def create
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
  :email => params[:stripeEmail],
  :source => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
  :customer => customer.id,
  :amount => @amount,

  :currency => ‘eur’
  )

  rescue Stripe::CardError => e
  flash[:error] = e.message
  end


end
