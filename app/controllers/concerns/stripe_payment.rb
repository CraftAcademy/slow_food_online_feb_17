module StripePayment
  extend ActiveSupport::Concern

  def self.perform_transaction(params, cart)
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: stripe_token(params)
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: (cart.total * 100).to_i,
      description: 'Slow Food order',
      currency: 'sek'
    )
    return charge
  rescue => e
    [e.message, 'Please try again'].join(' ')
  end

  def self.stripe_token(params)
    Rails.env.test? ? generate_test_token : params[:stripeToken]
  end

  def self.generate_test_token
    StripeMock.create_test_helper.generate_card_token
  end
end
