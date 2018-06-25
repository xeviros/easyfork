class PaymentsController < ApplicationController
  before_action :set_order
  skip_after_action :verify_authorized


  def new
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @order.amount_cents,
    description:  "Payment for order #{@order.id}",
    currency:     @order.amount.currency
  )

  @order.update(payment: charge.to_json, status: 'Paid')
  redirect_to edit_bill_path(@order.bill)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to edit_bill_path(@order.bill)
    # ...
  end

private

  def set_order
    @order = Order.find(params[:order_id])
  end
end
