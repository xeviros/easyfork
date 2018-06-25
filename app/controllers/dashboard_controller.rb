class DashboardController < ApplicationController
skip_after_action :verify_authorized

  def my_restaurants
    @restaurants = policy_scope(Restaurant).where(user: current_user)
  end

  def my_orders_requests
    @bills = current_user.bills
  end

  def my_orders
    @orders = policy_scope(Order).where(user: current_user)
  end
end
