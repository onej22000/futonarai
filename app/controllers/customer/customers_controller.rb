class Customer::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @customer = Customer.find(current_customer.id)
    @customer_reservations = current_customer.reservations.where('start_time >= ?', DateTime.current).order(day: :desc)
    @visit_historys = current_customer.reservations.where('start_time < ?', DateTime.current).where('start_time > ?',
                                                                                                    DateTime.current << 12).order(day: :desc)
  end


  def edit
    @customer = Customer.find(current_customer.id)
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:notice] = "You have updated  successfully."
      redirect_to customer_customer_path(current_customer)
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :kana_family_name, :kana_first_name, :postal_code, :address, :tel, :email, :is_deleted)
  end

end
