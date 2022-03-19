class Customer::ReservationsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @reservations = Reservation.all.where('day >= ?', Date.current).where('day < ?',
                                                                          Date.current >> 3).order(day: :desc)
  end

  def new
    @reservation = Reservation.new
    @day = params[:day]
    @time = params[:time]
    @start_time = DateTime.parse(@day + ' ' + @time + ' ' + 'JST')
    message = @reservation.check_reservation_day(@day.to_date)
    redirect_back fallback_location: root_path, flash: { alert: message } if !!message
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.customer_id = current_customer.id
    if @reservation.save
      redirect_to customer_reservation_path @reservation.id
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      flash[:success] = 'ふとん洗い予約を削除しました。'
      redirect_to customer_path(current_customer.id)
    else
      render :show
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:day, :time, :customer_id, :start_time)
  end
end
