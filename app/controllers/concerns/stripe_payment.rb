module StripePayment
  extend ActiveSupport::Concern

  def self.perform_transaction(params, cart)
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: (cart.total * 100).to_i,
      description: 'Slow Food order',
      currency: 'sek'
    )

    return charge
  end
end
