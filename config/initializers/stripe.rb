Rails.configuration.stripe = {
:publishable_key => 'pk_test_P257uPpo7sVEW9880nPstR4c00uMhTCYYk',
:secret_key => 'sk_test_oHSJI3xrHBVLbUcL4zt6hj0200DyGIGrfc'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
