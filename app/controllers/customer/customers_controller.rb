class Customer::CustomersController < ApplicationController
  def show
    @customer = Customer.find(current_customer.id)
    @customer_reservations = current_customer.reservations.where('start_time >= ?', DateTime.current).order(day: :desc)
    @visit_historys = current_customer.reservations.where('start_time < ?', DateTime.current).where('start_time > ?',
                                                                                                    DateTime.current << 12).order(day: :desc)
  end

  def edit
    @customer = Customer.find(params[:id])
  end
end
